import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/constants/colors/colors.dart';
import 'package:netflix_clone/core/constants/constants.dart';

class NumberCard extends StatelessWidget {
  final int index;
  final String image;
  const NumberCard({super.key, required this.index, required this.image});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 40,
              height: 150,
            ),
            Container(
              width: 150,
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: radius10,
                  image: DecorationImage(
                      image: NetworkImage(image), fit: BoxFit.cover)),
            ),
          ],
        ),
        Positioned(
          left: 1,
          bottom: -40,
          child: BorderedText(
            strokeWidth: 4.0,
            strokeColor: whiteColor,
            child: Text(
              "$index",
              style: TextStyle(
                  color: backgroundColors,
                  fontSize: 120,
                  fontFamily: GoogleFonts.poppins().fontFamily),
            ),
          ),
        )
      ],
    );
  }
}
