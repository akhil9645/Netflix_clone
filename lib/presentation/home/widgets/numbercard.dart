import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/constants/colors/colors.dart';
import 'package:netflix_clone/core/constants/constants.dart';
import 'package:netflix_clone/presentation/search/widget/search_result.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, required this.index});

  final int index;

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
                  image: const DecorationImage(
                      image: AssetImage(imageUrl), fit: BoxFit.cover)),
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
