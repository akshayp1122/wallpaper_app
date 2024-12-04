import 'package:dio/dio.dart';
import 'package:wallpaper_app/models/unsplash_photo_model.dart';

class PhotoRepository {
  final Dio dio;

  // Constructor with a named parameter for Dio
  PhotoRepository({required this.dio});

  Future<List<UnsplashPhoto>> fetchPhotos({required int page, int perPage = 20}) async {
  try {
    final response = await dio.get(
        'https://api.unsplash.com/photos',
        queryParameters: {
          'page': page,
          'per_page': perPage,
          'client_id': 'shYYcpq2nr9qysT5XRlGOyvoXCBUw5TqVVQor5ndFBk',
        },
      );

    if (response.statusCode == 200) {
      // If response data is a List of JSON
      if (response.data is List) {
        final List<dynamic> data = response.data;
        // Print or inspect the data to check for nulls or missing values
        print('Fetched photos: $data');
        return data
            .map((json) => UnsplashPhoto.fromJson(json as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception('Unexpected response format');
      }
    } else {
      throw Exception('Failed to load photos: ${response.statusCode}');
    }
  } catch (e) {
    print('Error while fetching photos: $e');
    throw Exception('Failed to load photos: $e');
  }
}
}