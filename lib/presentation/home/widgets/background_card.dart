import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/constants.dart';

import 'package:netflix_clone/presentation/home/widgets/homepage_custombuttons.dart';

class BackgroundImageCard extends StatelessWidget {
  const BackgroundImageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 650,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(homePageMain),
            ),
          ),
        ),
        const Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Padding(
            padding: EdgeInsets.only(bottom: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HomePagebuttons(icon: Icons.add, text: 'My List'),
                PlaybuttonHome(),
                HomePagebuttons(icon: Icons.info_outline_rounded, text: 'Info')
              ],
            ),
          ),
        )
      ],
    );
  }
}
