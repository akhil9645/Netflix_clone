import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/constants/colors/colors.dart';
import 'package:netflix_clone/presentation/widgets/app_bar.dart';

class ScreenNewandHot extends StatelessWidget {
  const ScreenNewandHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppbarWidget(
            title: "New & Hot",
          ),
        ),
        body: TabBar(
            labelColor: backgroundColors,
            padding: const EdgeInsets.all(10),
            unselectedLabelColor: whiteColor,
            indicatorSize: TabBarIndicatorSize.tab,
            labelStyle: TextStyle(
              wordSpacing: 2,
              fontSize: 15,
              fontWeight: FontWeight.bold,
              fontFamily: GoogleFonts.montserrat().fontFamily,
            ),
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(35), color: whiteColor),
            tabs: const [
              Tab(
                text: '🍿 Coming Soon',
              ),
              Tab(
                text: "👀 Everyone's Watching",
              )
            ]),
      ),
    );
  }
}
