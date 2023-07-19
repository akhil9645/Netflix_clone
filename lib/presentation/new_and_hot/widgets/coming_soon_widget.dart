import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/constants/colors/colors.dart';
import 'package:netflix_clone/core/constants/constants.dart';
import 'package:netflix_clone/presentation/home/widgets/homepage_custombuttons.dart';

class ComingSoonwidget extends StatelessWidget {
  const ComingSoonwidget({
    super.key,
    required this.img,
  });

  final String img;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        const SizedBox(
          width: 50,
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'FEB',
                style: TextStyle(fontSize: 16, color: greyColor),
              ),
              Text(
                "11",
                style: TextStyle(
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
              NewAndHotImage(img: img),
              kheight,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "TALL GIRL 2",
                    style: TextStyle(
                        fontFamily: GoogleFonts.pangolin().fontFamily,
                        fontSize: 50,
                        letterSpacing: -3,
                        fontWeight: FontWeight.bold),
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
              Text(
                'Coming on Friday',
                style: TextStyle(fontSize: 17, color: greyColor.shade400),
              ),
              separator,
              const Text(
                'Tall Girl 2',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              separator,
              const Text(
                'Landing the lead in the school musical is a dream come true for Jodi, until the pressure sends her confidence -- and her relationship -- into a tallspin.',
                style: TextStyle(fontSize: 17, color: greyColor),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class NewAndHotImage extends StatelessWidget {
  const NewAndHotImage({
    super.key,
    required this.img,
  });

  final String img;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 210,
          child: Image.asset(
            img,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
            backgroundColor: Colors.black87,
            radius: 22,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.volume_off_rounded,
                color: Colors.white70,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
