import 'package:flutter_testwork/app/static/api_path.dart';

class Movie {
  Movie({
    required this.posterPath,
    required this.backdropPath,
    required this.overview,
    required this.title,
    required this.voteAverage,
    required this.releaseDate,
  });

  final String posterPath;
  final String backdropPath;
  final String overview;
  final String title;
  final double voteAverage;
  final String releaseDate;

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      backdropPath: ApiPath.imagePath(json['backdrop_path']),
      overview: json['overview'] as String,
      posterPath: ApiPath.imagePath(json['poster_path']),
      releaseDate: json['release_date'] as String,
      title: json['title'] as String,
      voteAverage: json['vote_average'].toDouble(),
    );
  }
}
