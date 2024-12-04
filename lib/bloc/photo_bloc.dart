import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallpaper_app/repository/unsplash_repository.dart';
import 'photo_event.dart';
import 'photo_state.dart';

class PhotoBloc extends Bloc<PhotoEvent, PhotoState> {
  final PhotoRepository repository;

  PhotoBloc(this.repository) : super(const PhotoState.initial()) {
    on<FetchPhotos>((event, emit) async {
      emit(const PhotoState.loading());
      try {
        final photos = await repository.fetchPhotos();
        emit(PhotoState.loaded(photos));
      } catch (e) {
        // Add logging for the error
        print('Error while fetching photos: $e');
        emit(PhotoState.error());
      }
    });
  }
}
