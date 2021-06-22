import 'package:flutter/material.dart';
import 'package:flutter_testwork/app/models/movie.dart';
import 'package:flutter_testwork/app/services/movie_api.dart';
import 'package:flutter_testwork/app/widgets/movie_card.dart';

class HomePage extends StatefulWidget {
  HomePage({
    Key? key,
    required this.title,
    required this.api,
  }) : super(key: key);

  final String title;
  final BaseMovieApi api;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    widget.api.getPopular();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.black,
        brightness: Brightness.dark,
      ),
      body: FutureBuilder<List<Movie>>(
        future: widget.api.getPopular(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
              itemCount: snapshot.data!.length,
              separatorBuilder: (_, __) => const SizedBox(
                height: 10.0,
              ),
              itemBuilder: (context, index) {
                return MovieCard(movie: snapshot.data![index]);
              },
            );
          }
          return Container();
        },
      ),
    );
  }
}
