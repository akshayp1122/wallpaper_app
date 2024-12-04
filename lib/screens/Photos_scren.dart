import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wallpaper_app/bloc/photo_bloc.dart';
import 'package:wallpaper_app/bloc/photo_event.dart';
import 'package:wallpaper_app/bloc/photo_state.dart';

class PhotoPage extends StatefulWidget {
  @override
  _PhotoPageState createState() => _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    // Add listener to the scroll controller
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        // Trigger lazy loading
        context.read<PhotoBloc>().add(const PhotoEvent.fetchPhotos());
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Unsplash Photos')),
      body: BlocBuilder<PhotoBloc, PhotoState>(
        builder: (context, state) {
          if (state is PhotoLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is PhotoLoaded) {
            return MasonryGridView.count(
              controller: _scrollController, // Attach ScrollController
              crossAxisCount: 2,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              itemCount: state.photos.length,
              itemBuilder: (context, index) {
                final photo = state.photos[index];
                return GestureDetector(
                  onTap: () {
                    // Logic to download high-resolution image
                  },
                  child: Image.network(photo.urls.regular, fit: BoxFit.cover),
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
}
