import 'package:flutter/material.dart';
import 'package:flutter_testwork/app/models/movie.dart';
import 'package:flutter_testwork/app/screens/movie_page.dart';
import 'package:flutter_testwork/app/widgets/movie_poster.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MoviePage(
                movie: movie,
              ),
            ),
          );
        },
        child: Column(
          children: [
            MoviePoster(path: movie.backdropPath),
            ListTile(
              title: Text(movie.title),
            ),
          ],
        ),
      ),
    );
  }
}
