// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unsplash_photo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UnsplashPhoto _$UnsplashPhotoFromJson(Map<String, dynamic> json) =>
    UnsplashPhoto(
      id: json['id'] as String,
      altDescription: json['altDescription'] as String,
      urls: UnsplashUrls.fromJson(json['urls'] as Map<String, dynamic>),
      userName: json['userName'] as String,
    );

Map<String, dynamic> _$UnsplashPhotoToJson(UnsplashPhoto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'altDescription': instance.altDescription,
      'urls': instance.urls,
      'userName': instance.userName,
    };
