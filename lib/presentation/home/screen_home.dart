import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_clone/core/constants/colors/colors.dart';
import 'package:netflix_clone/core/constants/constants.dart';
import 'package:netflix_clone/presentation/home/widgets/background_card.dart';
import 'package:netflix_clone/presentation/home/widgets/numbertitlecard.dart';
import 'package:netflix_clone/presentation/widgets/main_card_2.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  final image = "assets/images/iTGBHdL12QEpLyRVlykDuiYxzAG.jpg";
  final logo = "assets/images/netflix-logo-png-2616.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (context, index, _) {
        return NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            final ScrollDirection direction = notification.direction;

            if (direction == ScrollDirection.reverse) {
              scrollNotifier.value = false;
            } else if (direction == ScrollDirection.forward) {
              scrollNotifier.value = true;
            }
            return true;
          },
          child: Stack(
            children: [
              ListView(
                children: const [
                  BackgroundImageCard(),
                  MainCardTittle(
                    title: 'Released in the past Year',
                  ),
                  separator,
                  MainCardTittle2(
                    title: 'Trending Now',
                  ),
                  NumbertitleCard(),
                  separator,
                  MainCardTittle3(title: "Tense Dramas"),
                  separator,
                  MainCardTittle4(title: "South Indian Cinema")
                ],
              ),
              scrollNotifier.value == true
                  ? AnimatedContainer(
                      duration: const Duration(milliseconds: 100),
                      width: double.infinity,
                      height: 90,
                      color: Colors.black.withOpacity(0.5),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                logo,
                                width: 60,
                                height: 55,
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
                                        fit: BoxFit.cover,
                                        image: NetworkImage(userimg))),
                              ),
                              kwidth,
                            ],
                          ),
                          separator,
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'TV Shows',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                              Text(
                                'Movies',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                              Text(
                                'categories',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  : height50,
            ],
          ),
        );
      },
    ));
  }
}
