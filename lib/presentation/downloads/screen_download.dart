import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/colors/colors.dart';
import 'package:netflix_clone/core/constants/constants.dart';
import 'package:netflix_clone/presentation/widgets/app_bar.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final List imageList = [
    "assets/images/image_posture2.jpg",
    "assets/images/image_posture3.jpg",
    "assets/images/movies_postures1.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      //tittle
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppbarWidget(
          title: "Downloads",
        ),
      ),
      body: ListView(
        //this is used for subtittle
        children: [
          Kheight,
          const _SmartDownloads(),
          Kheight,
          const SizedBox(
            height: 10,
          ),
          //two textfiles
          const Text(
            'Introducing Downloads for you',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: whiteColor, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Kheight,
          const Text(
            "We'll download a personalised selection of \nmovies and shows for you, so there's \nalways something to watch on your \ndevice.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: greyColor,
            ),
          ),

          SizedBox(
            width: size.width,
            height: size.width,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: size.width * 0.38,
                  backgroundColor: Colors.grey.withOpacity(0.5),
                ),
                DownloadsImageWidget(
                  imageList: imageList[0],
                  margin: EdgeInsets.only(left: 160, bottom: 30),
                  angle: 20,
                  size: Size(size.width * 0.4, size.width * 0.55),
                ),
                DownloadsImageWidget(
                  imageList: imageList[1],
                  margin: EdgeInsets.only(right: 160, bottom: 30),
                  angle: -20,
                  size: Size(size.width * 0.4, size.width * 0.55),
                ),
                DownloadsImageWidget(
                  imageList: imageList[2],
                  margin: EdgeInsets.only(left: 0, top: 16),
                  size: Size(size.width * 0.4, size.width * 0.62),
                ),
              ],
            ),
          ),

          //two buttons for setup and see what you can download
          SizedBox(
            width: double.infinity,
            child: MaterialButton(
              color: buttonColorblue,
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Set Up',
                  style: TextStyle(
                      color: whiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),

          MaterialButton(
            color: buttonColorWhite,
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'See What You Can Download',
                style: TextStyle(
                    color: backgroundColors,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Kwidth,
        Icon(Icons.settings, color: whiteColor),
        Kwidth,
        Text(
          'Smart Downloads',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        )
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    super.key,
    required this.imageList,
    this.angle = 0,
    required this.margin,
    required this.size,
  });

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              imageList,
            ),
          ),
        ),
      ),
    );
  }
}
