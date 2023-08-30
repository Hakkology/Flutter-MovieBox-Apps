import 'package:flutter/material.dart';
import 'package:movie_app/MovieCard/movie.dart';

class MovieCard extends StatefulWidget {
  const MovieCard({super.key});

  @override
  State<MovieCard> createState() => _MovieCardState();
}

class _MovieCardState extends State<MovieCard> {
  final List<String> movieNames = [
    "Blade Runner",
    "Broken Skine",
    "Morbius",
    "Man In Black"
  ];

  final List<String> movieDescs = [
    "Movie in melancholic cyberpunk theme, legend.",
    "Girl with Wings and maybe Marvel stuff.",
    "Marvel movie as usual but with magic.",
    "Best movie ever to be shown on Hollywood."
  ];

  late final List<Movie> movieList = List.generate(
    movieNames.length,
    (index) => Movie(
      movieName: "${movieNames[index]}\n",
      movieDesc: movieDescs[index],
      movieImage: "assets/images/Image$index.jpg",
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text(
            "Movies",
            style: TextStyle(
                color: Color.fromARGB(255, 217, 195, 255), fontSize: 25),
          ),
          centerTitle: true,
        ),
        body: SizedBox(
          child: ListView.builder(
            itemCount: movieList.length,
            itemBuilder: (context, index) => buildMovieCard(context, index),
          ),
        ),
        backgroundColor: Colors.pinkAccent.shade100);
  }

  Widget buildMovieCard(BuildContext context, int index) {
    return Card(
      color: const Color.fromARGB(255, 203, 179, 247),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                child: Image.asset(
                  movieList[index].movieImage,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Text(movieList[index].movieName,
                              style: const TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 25)),
                        ],
                      ),
                      Text(
                        movieList[index].movieDesc,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  movieList[index].isFavorite
                      ? Icons.favorite
                      : Icons.heart_broken,
                  size: 30,
                  color: Colors.redAccent,
                ),
                onPressed: () {
                  setState(() {
                    movieList[index].isFavorite = !movieList[index].isFavorite;
                  });
                  SnackBar(
                    content: const Text('Spread the Love <3'),
                    action: SnackBarAction(label: 'Undo', onPressed: () {}),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
