import 'package:flutter/material.dart';
import 'package:flutter_testwork/app/screens/home_page.dart';
import 'package:flutter_testwork/app/services/movie_api.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The movie DB',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: HomePage(
        title: 'The movie DB',
        api: TheMovieDbApi(),
      ),
    );
  }
}
