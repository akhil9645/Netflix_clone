import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/api_constants.dart';
import 'package:netflix_clone/core/constants/colors/colors.dart';
import 'package:netflix_clone/core/constants/constants.dart';
import 'package:netflix_clone/domain/now_playing/now_playing_api.dart';
import 'package:netflix_clone/domain/trending/trending_api.dart';
import 'package:netflix_clone/domain/up_coming/up_coming_api.dart';
import 'package:netflix_clone/presentation/widgets/main_card.dart';
import 'package:netflix_clone/presentation/widgets/main_tittle.dart';

class MainCardTittle extends StatelessWidget {
  const MainCardTittle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Maintitle(title: title),
      homeCardSeperator,
      LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) {
                return FutureBuilder(
                  future: getTrendingImgs(),
                  builder: (context, snapshot) {
                    String? imgPath = snapshot.data?[index].posterPath;
                    return snapshot.hasData
                        ? Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Maincard(
                              image:
                                  "$imgBaseUrl${imgPath ?? "/qNBAXBIQlnOThrVvA6mA2B5ggV6.jpg"}",
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
                  },
                );
              },
            ),
          ))
    ]);
  }
}

class MainCardTittle2 extends StatelessWidget {
  const MainCardTittle2({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Maintitle(title: title),
      homeCardSeperator,
      LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) {
                return FutureBuilder(
                  future: getNowPlayingImgs(),
                  builder: (context, snapshot) {
                    String? imgPath = snapshot.data?[index].posterPath;
                    return snapshot.hasData
                        ? Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Maincard(
                              image:
                                  "$imgBaseUrl${imgPath ?? "/qNBAXBIQlnOThrVvA6mA2B5ggV6.jpg"}",
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
                  },
                );
              },
            ),
          ))
    ]);
  }
}

class MainCardTittle3 extends StatelessWidget {
  const MainCardTittle3({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Maintitle(title: title),
      homeCardSeperator,
      LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) {
                return FutureBuilder(
                  future: getTvTopRated(),
                  builder: (context, snapshot) {
                    String? imgPath = snapshot.data?[index].posterPath;
                    return snapshot.hasData
                        ? Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Maincard(
                              image:
                                  "$imgBaseUrl${imgPath ?? "/qNBAXBIQlnOThrVvA6mA2B5ggV6.jpg"}",
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
                  },
                );
              },
            ),
          ))
    ]);
  }
}

class MainCardTittle4 extends StatelessWidget {
  const MainCardTittle4({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Maintitle(title: title),
        homeCardSeperator,
        LimitedBox(
            maxHeight: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                10,
                (index) {
                  return FutureBuilder(
                    future: getTrendingImgs(),
                    builder: (context, snapshot) {
                      String? imgPath = snapshot.data?[index].posterPath;
                      return snapshot.hasData
                          ? Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Maincard(
                                image:
                                    "$imgBaseUrl${imgPath ?? "/qNBAXBIQlnOThrVvA6mA2B5ggV6.jpg"}",
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
                    },
                  );
                },
              ),
            ))
      ],
    );
  }
}
