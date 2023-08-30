class Movie {
  final String movieName;
  final String movieDesc;
  final String movieImage;
  bool isFavorite;

  Movie(
      {required this.movieName,
      required this.movieDesc,
      required this.movieImage,
      this.isFavorite = false});
}
