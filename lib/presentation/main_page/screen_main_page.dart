import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/colors/colors.dart';
import 'package:netflix_clone/presentation/downloads/screen_download.dart';
import 'package:netflix_clone/presentation/fast%20laughs/screen_fast_laughs.dart';
import 'package:netflix_clone/presentation/home/screen_home.dart';
import 'package:netflix_clone/presentation/main_page/widgets/bottom_nav.dart';
import 'package:netflix_clone/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:netflix_clone/presentation/search/screen_search.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final pages = [
    const ScreenHome(),
    const ScreenNewandHot(),
    const ScreenFastLaughs(),
    const ScreenSearch(),
    ScreenDownloads()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColors,
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: pageChangeNotifier,
          builder: (context, int currentPage, child) {
            return pages[currentPage];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
