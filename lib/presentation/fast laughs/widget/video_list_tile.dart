import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/colors/colors.dart';
import 'package:netflix_clone/core/constants/constants.dart';

class VideoListTile extends StatelessWidget {
  final int index;
  const VideoListTile({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        color: Colors.accents[index % Colors.accents.length],
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
                radius: 30,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.volume_off_rounded),
                ),
              ),

              //right side icons
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 30,
                    ),
                    separator,
                    VideoActionsWidget(
                        icon: Icons.emoji_emotions_rounded, title: "LOL"),
                    separator,
                    VideoActionsWidget(icon: Icons.add, title: "My List"),
                    separator,
                    VideoActionsWidget(
                        icon: Icons.send_rounded, title: "Share"),
                    separator,
                    VideoActionsWidget(
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
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
