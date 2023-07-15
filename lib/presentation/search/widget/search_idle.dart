import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/colors/colors.dart';
import 'package:netflix_clone/core/constants/constants.dart';
import 'package:netflix_clone/presentation/search/widget/tittle.dart';

const imageUrl = 'assets/images/searchpage.jpg';

class SearchIdle extends StatelessWidget {
  const SearchIdle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitle(
          title: 'Top Searches',
        ),
        kheight,
        Expanded(
          child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => const TopSearchItemTile(),
              separatorBuilder: (context, index) => separator,
              itemCount: 15),
        )
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final scrennwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: scrennwidth * 0.32,
          height: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: const DecorationImage(
                  image: AssetImage(imageUrl), fit: BoxFit.cover)),
        ),
        kwidth,
        const Expanded(
          child: Text(
            'Movie Name',
            style: TextStyle(
                color: whiteColor, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        const Icon(
          CupertinoIcons.play_circle,
          color: Colors.white,
          size: 35,
        )
      ],
    );
  }
}
