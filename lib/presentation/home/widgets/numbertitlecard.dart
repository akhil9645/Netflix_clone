import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/constants.dart';
import 'package:netflix_clone/presentation/home/widgets/numbercard.dart';
import 'package:netflix_clone/presentation/widgets/main_tittle.dart';

class NumbertitleCard extends StatelessWidget {
  const NumbertitleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  ),
                ),
              )),
        )
      ],
    );
  }
}
