import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/constants/colors/colors.dart';
import 'package:netflix_clone/core/constants/constants.dart';
import 'package:netflix_clone/domain/downloads/popular_for_downloads.dart';
import 'package:netflix_clone/domain/now_playing/now_playing_api.dart';
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
    return FutureBuilder(
      future: getNowPlayingImgs(),
      builder: (context, snapshot) {
        return snapshot.hasData
            ? ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (context, indx) {
                  String? date = snapshot.data?[indx].releaseDate;
                  String? title = snapshot.data?[indx].title;
                  String? content = snapshot.data?[indx].overview;
                  String? imgPath = snapshot.data?[indx].backdropPath;
                  return ComingSoonwidget(
                    img: imgPath,
                    content: content,
                    date: date,
                    title: title,
                  );
                },
              )
            : const Center(
                child: CircularProgressIndicator(
                  color: redColor,
                ),
              );
      },
    );
  }

  _buildEveryonesWatching() {
    return FutureBuilder(
        future: popularForDownloads(),
        builder: (context, snapshot) {
          return snapshot.hasData
              ? ListView.builder(
                  itemCount: snapshot.data?.length,
                  itemBuilder: (context, index) {
                    String? title = snapshot.data?[index].title;
                    String? content = snapshot.data?[index].overview;
                    String? imgpath = snapshot.data?[index].backdropPath;
                    return EveryoneWatching(
                      img: imgpath,
                      content: content,
                      title: title,
                    );
                  },
                )
              : const Center(
                  child: CircularProgressIndicator(
                    color: redColor,
                  ),
                );
        });
  }
}
