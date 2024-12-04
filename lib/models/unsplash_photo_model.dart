import 'package:json_annotation/json_annotation.dart';
import 'urls_model.dart';

part 'unsplash_photo_model.g.dart';

@JsonSerializable()
class UnsplashPhoto {
  final String id;
  final String altDescription;
  final UnsplashUrls urls;
  final String userName;

  UnsplashPhoto({
    required this.id,
    required this.altDescription,
    required this.urls,
    required this.userName,
  });

  factory UnsplashPhoto.fromJson(Map<String, dynamic> json) {
    return UnsplashPhoto(
      id: json['id'] as String,
      altDescription: json['alt_description'] as String? ?? '',  // Default empty string if null
      urls: UnsplashUrls.fromJson(json['urls']),
      userName: json['user']?['username'] as String? ?? '',  // Default empty string if null
    );
  }

  Map<String, dynamic> toJson() => _$UnsplashPhotoToJson(this);
}
