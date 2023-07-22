import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/api_constants.dart';

import 'package:netflix_clone/domain/search/search_api.dart';

class SearchResultPage extends StatefulWidget {
  const SearchResultPage({super.key, required this.searchText});

  final String searchText;

  @override
  State<SearchResultPage> createState() => _SearchResultPageState();
}

class _SearchResultPageState extends State<SearchResultPage> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: searchImageGet(widget.searchText),
      builder: (context, snapshot) {
        return snapshot.data != null && snapshot.data!.isNotEmpty
            ? GridView.builder(
                itemCount: snapshot.data!.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisExtent: 220,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8),
                itemBuilder: (context, index) {
                  String? imagepath = snapshot.data?[index].posterPath;
                  return snapshot.hasData
                      ? Container(
                          height: 80,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      '$imgBaseUrl${(imagepath ?? "/7syc6DmjSeUSNp4VSGELfHQW17Q.jpg")}'),
                                  fit: BoxFit.cover)),
                        )
                      : const Center(
                          child: CircularProgressIndicator(
                            color: Colors.red,
                          ),
                        );
                },
              )
            : const Center(
                child: CircularProgressIndicator(
                  color: Colors.red,
                ),
              );
      },
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image:
              DecorationImage(image: NetworkImage(image), fit: BoxFit.cover)),
    );
  }
}
