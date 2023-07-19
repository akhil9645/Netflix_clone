import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/colors/colors.dart';
import 'package:netflix_clone/core/constants/constants.dart';
import 'package:netflix_clone/presentation/home/widgets/homepage_custombuttons.dart';
import 'package:netflix_clone/presentation/new_and_hot/widgets/coming_soon_widget.dart';

class EveryoneWatching extends StatelessWidget {
  const EveryoneWatching({
    super.key,
    required this.img,
  });

  final String img;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        separator,
        const Text(
          'Friends',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        separator,
        const Text(
          'This hit slitocm follows the merry misadventures of six 20-something pals as they navigate the pitfalls of \n work, life and love in 1990s Manhattan.',
          style: TextStyle(fontSize: 17, color: greyColor),
        ),
        height50,
        NewAndHotImage(img: img),
        separator,
        separator,
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            HomePagebuttons(
              icon: Icons.send_rounded,
              text: 'Share',
              textsize: 15,
              textcolour: greyColor,
            ),
            kwidth,
            kwidth,
            HomePagebuttons(
              icon: Icons.add,
              text: 'My List',
              textsize: 15,
              textcolour: greyColor,
            ),
            kwidth,
            kwidth,
            HomePagebuttons(
              icon: Icons.play_arrow_rounded,
              text: 'Play',
              textsize: 15,
              textcolour: greyColor,
            ),
            kwidth,
            kwidth,
          ],
        ),
        separator,
      ],
    );
  }
}
