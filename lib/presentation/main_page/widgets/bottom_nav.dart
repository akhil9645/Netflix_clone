import 'package:flutter/material.dart';

ValueNotifier<int> pageChangeNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: pageChangeNotifier,
        builder: (context, int currentPage, child) {
          return BottomNavigationBar(
            onTap: (value) {
              pageChangeNotifier.value = value;
            },
            currentIndex: currentPage,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            selectedIconTheme: const IconThemeData(color: Colors.white),
            unselectedIconTheme: const IconThemeData(color: Colors.grey),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.collections_rounded), label: 'New & Hot'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.emoji_emotions_rounded),
                  label: 'Fast Laughs'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search_rounded), label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.download_for_offline_rounded),
                  label: 'Downloads')
            ],
          );
        });
  }
}
