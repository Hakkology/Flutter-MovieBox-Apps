import 'package:flutter/material.dart';
import 'package:movie_app2/views/moviescreen.dart';

void main() {
  runApp(const MovieBoxApp());
}

class MovieBoxApp extends StatelessWidget {
  const MovieBoxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MovieScreen(),
    );
  }
}
