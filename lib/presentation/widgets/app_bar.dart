import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/colors/colors.dart';

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
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        const Icon(
          Icons.cast,
          size: 30,
          color: whiteColor,
        ),
        Kwidth,
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png"))),
        ),
        Kwidth,
      ],
    );
  }
}
