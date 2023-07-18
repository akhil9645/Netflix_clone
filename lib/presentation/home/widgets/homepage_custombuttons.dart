import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/colors/colors.dart';

class HomePagebuttons extends StatelessWidget {
  const HomePagebuttons({
    required this.icon,
    required this.text,
    super.key,
  });
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 28,
          color: whiteColor,
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

class PlaybuttonHome extends StatelessWidget {
  const PlaybuttonHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        onPressed: () {},
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(whiteColor)),
        icon: const Icon(
          Icons.play_arrow_sharp,
          color: backgroundColors,
          size: 28,
        ),
        label: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            'Play',
            style: TextStyle(
                color: backgroundColors,
                fontWeight: FontWeight.bold,
                fontSize: 15),
          ),
        ));
  }
}
