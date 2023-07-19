import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/colors/colors.dart';

class HomePagebuttons extends StatelessWidget {
  const HomePagebuttons({
    required this.icon,
    required this.text,
    this.iconsize = 28,
    this.textsize = 18,
    this.textcolour = whiteColor,
    super.key,
  });
  final IconData icon;
  final String text;
  final double iconsize;
  final double textsize;
  final Color textcolour;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: iconsize,
          color: whiteColor,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: textsize,
              fontWeight: FontWeight.bold,
              color: textcolour),
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
