import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/api_constants.dart';
import 'package:netflix_clone/core/constants/colors/colors.dart';
import 'package:netflix_clone/core/constants/constants.dart';
import 'package:netflix_clone/domain/top_rated/top_rated_api.dart';
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
              (index) {
                return FutureBuilder(
                    future: getTopRatedImgs(),
                    builder: (context, snapshot) {
                      String? imgpath = snapshot.data?[index].posterPath;
                      return snapshot.hasData
                          ? Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: NumberCard(
                                image:
                                    "$imgBaseUrl${imgpath ?? "/qNBAXBIQlnOThrVvA6mA2B5ggV6.jpg"}",
                                index: index + 1,
                              ),
                            )
                          : const SizedBox(
                              width: 150,
                              child: Center(
                                child: CircularProgressIndicator(
                                  color: redColor,
                                ),
                              ),
                            );
                    });
              },
            ),
          ),
        )
      ],
    );
  }
}
