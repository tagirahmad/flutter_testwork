import 'package:flutter/material.dart';
import 'package:flutter_testwork/app/models/movie.dart';
import 'package:flutter_testwork/app/widgets/movie_poster.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({Key? key, required this.movie}) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(movie.title),
        backgroundColor: Colors.black,
        brightness: Brightness.dark,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: MoviePoster(
                    path: movie.posterPath,
                    height: 400,
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              MovieTitle(title: movie.title),
              const SizedBox(height: 8.0),
              MovieReleaseDate(releaseDate: movie.releaseDate),
              const SizedBox(height: 8.0),
              UserRating(rating: movie.voteAverage.toString()),
              const SizedBox(height: 20.0),
              MovieOverview(overview: movie.overview)
            ],
          ),
        ),
      ),
    );
  }
}

class MovieOverview extends StatelessWidget {
  const MovieOverview({
    Key? key,
    required this.overview,
  }) : super(key: key);

  final String overview;

  @override
  Widget build(BuildContext context) {
    return Text(
      overview,
      style: TextStyle(color: Colors.white),
    );
  }
}

class UserRating extends StatelessWidget {
  const UserRating({
    Key? key,
    required this.rating,
  }) : super(key: key);

  final String rating;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'User raiting: ',
        style: TextStyle(color: Colors.white),
        children: <TextSpan>[
          TextSpan(
            text: rating,
          ),
        ],
      ),
    );
  }
}

class MovieReleaseDate extends StatelessWidget {
  const MovieReleaseDate({
    Key? key,
    required this.releaseDate,
  }) : super(key: key);

  final String releaseDate;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Release date: ',
        style: TextStyle(color: Colors.white),
        children: <TextSpan>[
          TextSpan(
            text: releaseDate,
          ),
        ],
      ),
    );
  }
}

class MovieTitle extends StatelessWidget {
  const MovieTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
