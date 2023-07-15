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
        kwidth,
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
        kwidth,
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              image: const DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(userimg))),
        ),
        kwidth,
      ],
    );
  }
}
