import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/colors/colors.dart';

class Maintitle extends StatelessWidget {
  final String title;
  const Maintitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
          fontWeight: FontWeight.bold, fontSize: 24, color: whiteColor),
    );
  }
}
