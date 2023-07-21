import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/fast%20laughs/widget/video_list_tile.dart';

class ScreenFastLaughs extends StatefulWidget {
  const ScreenFastLaughs({super.key});

  @override
  State<ScreenFastLaughs> createState() => _ScreenFastLaughsState();
}

class _ScreenFastLaughsState extends State<ScreenFastLaughs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: PageView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          children: List.generate(10, (indx) {
            return VideoListTile(
              index: indx,
            );
          })),
    ));
  }
}
