import 'package:json_annotation/json_annotation.dart';

part 'urls_model.g.dart';

@JsonSerializable()
class UnsplashUrls {
  final String raw;
  final String full;
  final String regular;
  final String small;
  final String thumb;

  UnsplashUrls({
    required this.raw,
    required this.full,
    required this.regular,
    required this.small,
    required this.thumb,
  });

  factory UnsplashUrls.fromJson(Map<String, dynamic> json) {
    return UnsplashUrls(
      raw: json['raw'] as String? ?? '',  // Default empty string if null
      full: json['full'] as String? ?? '',
      regular: json['regular'] as String? ?? '',
      small: json['small'] as String? ?? '',
      thumb: json['thumb'] as String? ?? '',
    );
  }

  Map<String, dynamic> toJson() => _$UnsplashUrlsToJson(this);
}
