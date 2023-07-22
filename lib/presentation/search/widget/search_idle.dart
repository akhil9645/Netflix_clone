import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/colors/colors.dart';
import 'package:netflix_clone/core/constants/constants.dart';
import 'package:netflix_clone/domain/trending/trending_api.dart';
import 'package:netflix_clone/domain/trending/trending_api_model/result.dart';

class SearchIdle extends StatelessWidget {
  const SearchIdle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight,
        Expanded(
          child: FutureBuilder(
            future: getTrendingImgs(),
            builder:
                (BuildContext context, AsyncSnapshot<List<Result>> snapshot) {
              return snapshot.hasData
                  ? ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, indx) {
                        String imagepath =
                            '${snapshot.data![indx].backdropPath}';
                        String titlepath = '${snapshot.data![indx].title}';
                        return TopSearchItemTile(
                          imagePath: imagepath,
                          moviename: titlepath,
                        );
                      },
                      separatorBuilder: (context, index) => separator,
                      itemCount: snapshot.data!.length)
                  : const Center(
                      child: CircularProgressIndicator(
                        color: redColor,
                      ),
                    );
            },
          ),
        ),
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile(
      {super.key, required this.imagePath, required this.moviename});

  final String imagePath;
  final String moviename;

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
              image: DecorationImage(
                  image: NetworkImage(imagePath), fit: BoxFit.cover)),
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
