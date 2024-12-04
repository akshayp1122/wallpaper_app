import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:image_gallery_saver_plus/image_gallery_saver_plus.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wallpaper_app/bloc/photo_bloc.dart';
import 'package:wallpaper_app/bloc/photo_event.dart';
import 'package:wallpaper_app/bloc/photo_state.dart';
import 'package:wallpaper_app/util/util.dart';
import 'package:cached_network_image/cached_network_image.dart';

class PhotoPage extends StatefulWidget {
  @override
  _PhotoPageState createState() => _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        context.read<PhotoBloc>().add(const PhotoEvent.fetchPhotos());
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
// download image
  Future<void> _saveNetworkImage(BuildContext context, String url) async {
    bool confirmDownload = await _showDownloadConfirmationDialog(context);
    if (!confirmDownload) return;

    var status = await Permission.manageExternalStorage.request();
    if (status.isGranted) {
      try {
        var response = await Dio().get(
          url,
          options: Options(responseType: ResponseType.bytes),
        );

        final result = await ImageGallerySaverPlus.saveImage(
          Uint8List.fromList(response.data),
          quality: 60,
          name: "downloaded_image",
        );

        if (result["isSuccess"]) {
          _showSuccessDialog(context);
        } else {
          _showErrorDialog(context);
        }
      } catch (e) {
        _showErrorDialog(context);
      }
    } else {
      Utils.toast("Permission denied. Unable to download.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0), 
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft:
                Radius.circular(30.0), 
            bottomRight:
                Radius.circular(30.0), 
          ),
          child: AppBar(
            backgroundColor: Color(0xFFFFB6B9),
            elevation: 10,
            centerTitle: true,
            flexibleSpace: const Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16, top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Unsplash Photos',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                      color: Color(0xFF333333),
                    ),
                  ),
                  
                ],
              ),
            ),
          ),
        ),
      ),
      body: BlocBuilder<PhotoBloc, PhotoState>(
        builder: (context, state) {
          if (state is PhotoLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is PhotoLoaded) {
            return MasonryGridView.count(
              controller: _scrollController,
              crossAxisCount: 2,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              itemCount: state.photos.length,
              itemBuilder: (context, index) {
                final photo = state.photos[index];
                return GestureDetector(
                  onTap: () {
                    // download
                    _saveNetworkImage(context, photo.urls.full);
                  },
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: CachedNetworkImage(
                      imageUrl: photo.urls.regular,
                      fit: BoxFit.cover,
                      placeholder: (context, url) =>
                          const Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ),
                );
              },
            );
          } else if (state is PhotoError) {
            return const Center(child: Text('Error loading photos.'));
          }
          return Container();
        },
      ),
    );
  }

  Future<bool> _showDownloadConfirmationDialog(BuildContext context) async {
    bool? result = await showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Download File"),
          content: const Text("Do you want to download this file?"),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: const Text("Download"),
            ),
          ],
        );
      },
    );
    return result ?? false;
  }

  void _showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Download Complete"),
          content: const Text("The file has been downloaded successfully!"),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }

  void _showErrorDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Download Failed"),
          content: const Text("An error occurred while downloading the file."),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }
}
