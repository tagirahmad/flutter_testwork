import 'package:flutter/material.dart';

class MoviePoster extends StatelessWidget {
  const MoviePoster({
    Key? key,
    required this.path,
    this.height,
  }) : super(key: key);

  final String path;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      path,
      height: height,
    );
  }
}
