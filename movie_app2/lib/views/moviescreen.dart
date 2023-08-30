import 'package:flutter/material.dart';
import 'package:movie_app2/components/moviecard.dart';
import 'package:movie_app2/models/movie.dart';

class MovieScreen extends StatelessWidget {
  MovieScreen({super.key});

  final List<Movie> movieList = [
    Movie(
      description: "Great Movie",
      imagePath: "assets/images/Image0.jpg",
    ),
    Movie(
      description: "Bad Movie",
      imagePath: "assets/images/Image1.jpg",
    ),
    Movie(
      description: "Perfect Movie",
      imagePath: "assets/images/Image2.jpg",
    ),
    Movie(
      description: "Worst Movie",
      imagePath: "assets/images/Image3.jpg",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movie Box"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: movieList.length,
          itemBuilder: (context, index) =>
              MovieCard(selectedMovie: movieList[index])),
    );
  }
}
