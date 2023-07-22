import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/constants.dart';
import 'package:netflix_clone/domain/search/search_api.dart';
import 'package:netflix_clone/presentation/search/widget/search_idle.dart';
import 'package:netflix_clone/presentation/search/widget/search_result.dart';

TextEditingController searchController = TextEditingController();
ValueNotifier searchScreenNotifier = ValueNotifier([]);

class ScreenSearch extends StatelessWidget {
  ScreenSearch({super.key});

  String searchText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
            valueListenable: searchScreenNotifier,
            builder: (context, value, child) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CupertinoSearchTextField(
                      onChanged: (value) {
                        searchText = value.trim();
                        searchImageGet(searchText);
                        searchScreenNotifier.notifyListeners();
                      },
                      controller: searchController,
                      prefixIcon: const Icon(
                        CupertinoIcons.search,
                        color: Colors.grey,
                      ),
                      suffixIcon: const Icon(
                        CupertinoIcons.xmark_circle_fill,
                        color: Colors.grey,
                      ),
                      style: const TextStyle(color: Colors.white),
                      backgroundColor: Colors.grey.withOpacity(0.4),
                    ),
                    kheight,
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        (searchController.text.isEmpty)
                            ? 'Top Searches'
                            : 'Movies & TV',
                        style: const TextStyle(
                            fontSize: 23, fontWeight: FontWeight.w600),
                      ),
                    ),
                    (searchController.text.isEmpty)
                        ? const Expanded(child: SearchIdle())
                        : Expanded(
                            child: SearchResultPage(
                            searchText: searchText,
                          ))
                  ],
                ),
              );
            }),
      ),
    );
  }
}
