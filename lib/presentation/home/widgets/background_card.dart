import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/api_constants.dart';
import 'package:netflix_clone/core/constants/colors/colors.dart';

import 'package:netflix_clone/domain/trending/trending_api.dart';

import 'package:netflix_clone/presentation/home/widgets/homepage_custombuttons.dart';

class BackgroundImageCard extends StatelessWidget {
  const BackgroundImageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getTrendingImgs(),
      builder: (context, snapshot) {
        String? imgPath = snapshot.data?[0].posterPath;
        return snapshot.hasData
            ? Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 650,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage("$imgBaseUrl$imgPath"),
                          fit: BoxFit.cover),
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
                          HomePagebuttons(
                              icon: Icons.info_outline_rounded, text: 'Info')
                        ],
                      ),
                    ),
                  )
                ],
              )
            : const SizedBox(
                width: double.infinity,
                height: 650,
                child: Center(
                  child: CircularProgressIndicator(
                    color: redColor,
                  ),
                ),
              );
      },
    );
  }
}
