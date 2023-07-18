import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/constants.dart';
import 'package:netflix_clone/presentation/home/widgets/numbercard.dart';

import 'package:netflix_clone/presentation/widgets/main_card_2.dart';
import 'package:netflix_clone/presentation/widgets/main_tittle.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  final image = "assets/images/iTGBHdL12QEpLyRVlykDuiYxzAG.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MainCardTittle(
              image: image,
              title: 'Released in the past Year',
            ),
            separator,
            MainCardTittle(
              image: image,
              title: 'Trending Now',
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                separator,
                const Maintitle(title: "Top 10 TV Shows in India Today"),
                homeCardSeperator,
                LimitedBox(
                  maxHeight: 200,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                          10,
                          (index) => Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: NumberCard(
                                index: index + 1,
                              )))),
                )
              ],
            ),
            separator,
            MainCardTittle(image: image, title: "Tense Dramas"),
            separator,
            MainCardTittle(image: image, title: "South Indian Cinema")
          ],
        ),
      ),
    );
  }
}
