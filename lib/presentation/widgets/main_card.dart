import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/constants.dart';

class Maincard extends StatelessWidget {
  const Maincard({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 250,
      decoration: BoxDecoration(
          borderRadius: radius10,
          image:
              DecorationImage(image: NetworkImage(image), fit: BoxFit.cover)),
    );
  }
}
