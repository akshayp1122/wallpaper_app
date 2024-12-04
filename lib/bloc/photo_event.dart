import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_event.freezed.dart';

@freezed
class PhotoEvent with _$PhotoEvent {
  const factory PhotoEvent.fetchPhotos() = FetchPhotos;
}
