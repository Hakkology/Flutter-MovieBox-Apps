import 'package:flutter/material.dart';
import 'package:movie_app2/models/movie.dart';

class MovieCard extends StatefulWidget {
  MovieCard({super.key, required this.selectedMovie});
  Movie selectedMovie;
  @override
  State<MovieCard> createState() => _movieCardState();
}

// ignore: camel_case_types
class _movieCardState extends State<MovieCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(widget.selectedMovie.imagePath,
              width: MediaQuery.of(context).size.width * 0.4),
          Expanded(
            child: Text(
              widget.selectedMovie.description,
              style: const TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          IconButton(
              onPressed: () {
                setState(() {
                  widget.selectedMovie.isFavorite =
                      !widget.selectedMovie.isFavorite;
                });
              },
              icon: Icon(
                Icons.favorite,
                color: widget.selectedMovie.isFavorite
                    ? Colors.deepPurple
                    : Colors.black12,
              ))
        ],
      ),
    );
  }
}
