import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/widgets/app_bar.dart';

class ScreenNewandHot extends StatelessWidget {
  const ScreenNewandHot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppbarWidget(
          title: "New & Hot",
        ),
      ),
    );
  }
}
