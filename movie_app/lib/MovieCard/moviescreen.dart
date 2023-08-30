import 'package:flutter/material.dart';
import 'package:movie_app/MovieCard/moviecard.dart';

class MovieScreen extends StatelessWidget {
  const MovieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MovieCard(),
      debugShowCheckedModeBanner: false,
    );
  }
}
