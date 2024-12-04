import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallpaper_app/models/unsplash_photo_model.dart';
import 'package:wallpaper_app/repository/unsplash_repository.dart';
import 'photo_event.dart';
import 'photo_state.dart';

class PhotoBloc extends Bloc<PhotoEvent, PhotoState> {
  final PhotoRepository repository;

  int currentPage = 1; // Track the current page
  bool isFetching = false; // Prevent duplicate requests

  PhotoBloc(this.repository) : super(const PhotoState.initial()) {
    on<FetchPhotos>((event, emit) async {
      if (isFetching) return;

      isFetching = true;

      try {
        if (state is! PhotoLoaded) {
          emit(const PhotoState.loading());
        }

        final List<UnsplashPhoto> newPhotos = await repository.fetchPhotos(page: currentPage);

        if (newPhotos.isEmpty) {
          emit(const PhotoState.error()); // No more data
        } else {
          if (state is PhotoLoaded) {
            final List<UnsplashPhoto> existingPhotos =
                (state as PhotoLoaded).photos;
            emit(PhotoState.loaded(existingPhotos + newPhotos));
          } else {
            emit(PhotoState.loaded(newPhotos));
          }

          currentPage++; // Increment page for next request
        }
      } catch (e) {
        emit(const PhotoState.error());
      }

      isFetching = false;
    });
  }
}
