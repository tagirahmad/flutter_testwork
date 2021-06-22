import 'dart:convert';

import 'package:flutter_testwork/app/models/movie.dart';
import 'package:flutter_testwork/app/static/api_path.dart';
import 'package:http/http.dart' as http;

abstract class BaseMovieApi {
  Future<List<Movie>> getPopular();
}

class TheMovieDbApi implements BaseMovieApi {
  @override
  Future<List<Movie>> getPopular() async {
    try {
      final response = await http.get(Uri.parse(ApiPath.popularMoviesPath()));
      final Map<String, dynamic> movies = jsonDecode(response.body);

      final popularMovies = movies['results'] as List<dynamic>;
      final parsedPopularMovies =
          popularMovies.map((movie) => Movie.fromJson(movie)).toList();

      return parsedPopularMovies;
    } catch (e) {
      throw e;
    }
  }
}
