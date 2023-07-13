import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/colors/colors.dart';
import 'package:netflix_clone/core/constants/constants.dart';
import 'package:netflix_clone/presentation/widgets/app_bar.dart';

class ScreenDownloads extends StatelessWidget {
  const ScreenDownloads({super.key});

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
          const Row(
            children: [
              Kwidth,
              Icon(Icons.settings, color: whiteColor),
              Kwidth,
              Text('Smart Downloads')
            ],
          ),
          //two textfiles
          const Text('Introducing Downloads for you'),
          const Text(
              "We'll download a personalised selection of movies and shows for you, so there's always something to watch on your device"),

          Container(
            width: size.width,
            height: size.width,
            color: Colors.white,
            child: Stack(
              children: [
                Center(
                  child: CircleAvatar(
                    radius: size.width * 0.35,
                  ),
                )
              ],
            ),
          ),

          //two buttons for setup and see what you can download
          MaterialButton(
            color: buttonColorblue,
            onPressed: () {},
            child: const Text(
              'Set Up',
              style: TextStyle(
                  color: whiteColor, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          MaterialButton(
            color: buttonColorWhite,
            onPressed: () {},
            child: const Text(
              'See What You Can Download',
              style: TextStyle(
                  color: backgroundColors,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
