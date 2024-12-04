import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wallpaper_app/bloc/photo_bloc.dart';
import 'package:wallpaper_app/bloc/photo_event.dart';
import 'package:wallpaper_app/bloc/photo_state.dart';
import 'package:wallpaper_app/repository/unsplash_repository.dart';

class PhotoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Unsplash Photos')),
      body: BlocProvider(
        create: (context) => PhotoBloc(PhotoRepository(dio: Dio()))..add(const PhotoEvent.fetchPhotos()),
        child: BlocBuilder<PhotoBloc, PhotoState>(
          builder: (context, state) {
            if (state is PhotoLoading) {
              return Center(child: CircularProgressIndicator());
            } else if (state is PhotoLoaded) {
              return MasonryGridView.count(
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
                // staggeredTileBuilder: (index) => StaggeredTile.fit(1),
              );
            } else if (state is PhotoError) {
              return Center(child: Text('Error loading photos.'));
            }
            return Container();
          },
        ),
      ),
    );
  }
}
