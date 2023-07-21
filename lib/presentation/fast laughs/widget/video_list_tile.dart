import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/api_constants.dart';
import 'package:netflix_clone/core/constants/colors/colors.dart';
import 'package:netflix_clone/core/constants/constants.dart';
import 'package:netflix_clone/domain/trending/trending_api.dart';

class VideoListTile extends StatelessWidget {
  final int index;
  const VideoListTile({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      FutureBuilder(
        future: getTrendingImgs(),
        builder: (context, snapshot) {
          String? imgPath = snapshot.data?[index].posterPath;
          return snapshot.hasData
              ? Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("$imgBaseUrl$imgPath"),
                    ),
                  ),
                )
              : const SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: Center(
                    child: CircularProgressIndicator(
                      color: redColor,
                    ),
                  ),
                );
        },
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //left side icon
              CircleAvatar(
                backgroundColor: Colors.black87,
                radius: 25,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.volume_off_rounded,
                    color: Colors.white70,
                  ),
                ),
              ),

              //right side icons
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FutureBuilder(
                        future: getTrendingImgs(),
                        builder: (context, snapshot) {
                          String? imgPath = snapshot.data?[index].backdropPath;
                          return snapshot.hasData
                              ? CircleAvatar(
                                  backgroundImage:
                                      NetworkImage("$imgBaseUrl$imgPath"),
                                  radius: 25,
                                )
                              : const Center(
                                  child: CircularProgressIndicator(
                                    color: redColor,
                                  ),
                                );
                        }),
                    separator,
                    const VideoActionsWidget(
                        icon: Icons.emoji_emotions_rounded, title: "LOL"),
                    separator,
                    const VideoActionsWidget(icon: Icons.add, title: "My List"),
                    separator,
                    const VideoActionsWidget(
                        icon: Icons.send_rounded, title: "Share"),
                    separator,
                    const VideoActionsWidget(
                        icon: Icons.play_arrow_rounded, title: "Play"),
                  ],
                ),
              )
            ],
          ),
        ),
      )
    ]);
  }
}

class VideoActionsWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActionsWidget(
      {super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: whiteColor,
          size: 35,
        ),
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
