import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallpaper_app/models/unsplash_photo_model.dart';

part 'photo_state.freezed.dart';

@freezed
class PhotoState with _$PhotoState {
  const factory PhotoState.initial() = PhotoInitial;
  const factory PhotoState.loading() = PhotoLoading;
  const factory PhotoState.loaded(List<UnsplashPhoto> photos) = PhotoLoaded;
  const factory PhotoState.error() = PhotoError;
}
