import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/constants/colors/colors.dart';
import 'package:netflix_clone/core/constants/constants.dart';
import 'package:netflix_clone/presentation/home/widgets/homepage_custombuttons.dart';
import 'package:netflix_clone/presentation/new_and_hot/widgets/video_widget.dart';

// ignore: must_be_immutable
class ComingSoonwidget extends StatelessWidget {
  ComingSoonwidget(
      {super.key,
      required this.img,
      required this.content,
      required this.date,
      required this.title});

  final String? img;
  final String? date;
  final String? title;
  final String? content;

  String month = '';

  String day = '';

  String? one;

  String? ten;

  @override
  Widget build(BuildContext context) {
    if (date != null) {
      one = date?[5];
      ten = date?[6];
      month = "$one$ten";
    } else {
      month = '12';
    }
    if (date != null) {
      one = date?[8];
      ten = date?[9];
      day = "$one$ten";
    } else {
      month = '24';
    }
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                month,
                style: const TextStyle(fontSize: 16, color: greyColor),
              ),
              Text(
                day,
                style: const TextStyle(
                    fontSize: 32,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidget(imgpath: img),
              //video widget need add
              kheight,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      title ?? "Movie Name",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontFamily: GoogleFonts.pangolin().fontFamily,
                          fontSize: 50,
                          letterSpacing: -3,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Spacer(),
                  const Row(
                    children: [
                      HomePagebuttons(
                          icon: Icons.notifications_none_rounded,
                          text: "Remind Me",
                          iconsize: 20,
                          textsize: 13),
                      kwidth,
                      kwidth,
                      HomePagebuttons(
                        icon: Icons.info_outline_rounded,
                        text: "Info",
                        iconsize: 20,
                        textsize: 13,
                      ),
                      kwidth,
                      kwidth,
                    ],
                  ),
                ],
              ),

              separator,
              Text(
                title ?? "Movie Name",
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              separator,
              Text(
                content ??
                    "Landing the lead in the school musical is a dream come true for Jodi, until the pressure sends her confidence -- and her relationship -- into a tallspin.",
                maxLines: 6,
                style: const TextStyle(fontSize: 17, color: greyColor),
              )
            ],
          ),
        ),
      ],
    );
  }
}
