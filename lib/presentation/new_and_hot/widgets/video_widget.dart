import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/api_constants.dart';
import 'package:netflix_clone/core/constants/colors/colors.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({super.key, required this.imgpath});

  final String? imgpath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(
            "$imgBaseUrl$imgpath",
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 10,
          child: CircleAvatar(
              radius: 25,
              backgroundColor: backgroundColors.withOpacity(0.5),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.volume_off,
                    color: whiteColor,
                    size: 30,
                  ))),
        )
      ],
    );
  }
}
