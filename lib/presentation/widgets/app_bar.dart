import 'package:flutter/material.dart';

import 'package:netflix_clone/core/constants/constants.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Kwidth,
        Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        const Icon(
          Icons.cast,
          size: 30,
          color: Colors.white,
        ),
        Kwidth,
        Container(width: 30, height: 30, color: Colors.blue),
        Kwidth,
      ],
    );
  }
}
