import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/constants/colors/colors.dart';
import 'package:netflix_clone/core/constants/constants.dart';
import 'package:netflix_clone/presentation/new_and_hot/widgets/coming_soon_widget.dart';
import 'package:netflix_clone/presentation/new_and_hot/widgets/everyonwatching_widget.dart';

class ScreenNewandHot extends StatelessWidget {
  const ScreenNewandHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppBar(
            title: const Text(
              'New & Hot',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            actions: [
              const Icon(
                Icons.cast,
                size: 30,
                color: whiteColor,
              ),
              kwidth,
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    image: const DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(userimg))),
              ),
              kwidth,
            ],
            bottom: TabBar(
              labelColor: backgroundColors,
              padding: const EdgeInsets.all(10),
              unselectedLabelColor: whiteColor,
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
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            _buildComingSoon(),
            _buildEveryonesWatching(),
          ],
        ),
      ),
    );
  }

  _buildComingSoon() {
    const img = "assets/images/nf3Vlxm3C9U1aKUUQHmKFZmxPSc.jpg";

    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const ComingSoonwidget(img: img);
      },
    );
  }

  _buildEveryonesWatching() {
    const img = "assets/images/foGkPxpw9h8zln81j63mix5B7m8.jpg";
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const EveryoneWatching(img: img);
      },
    );
  }
}
