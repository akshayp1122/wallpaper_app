import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallpaper_app/bloc/photo_bloc.dart';
import 'package:wallpaper_app/bloc/photo_event.dart';
import 'package:wallpaper_app/repository/unsplash_repository.dart';
import 'package:wallpaper_app/screens/Photos_scren.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  BlocProvider(
        create: (context) => PhotoBloc(PhotoRepository(dio: Dio()))
          ..add(const PhotoEvent.fetchPhotos()),
        child: PhotoPage(),
      ),
    );
    
  }
}

