import 'dart:convert';

import 'package:netflix_clone/core/constants/api_constants.dart' as api_const;
import 'package:http/http.dart' as http;
import 'package:netflix_clone/domain/now_playing/now_playing_model/now_playing_model.dart';
import 'package:netflix_clone/domain/now_playing/now_playing_model/result.dart';

Future<List<Result>> getNowPlayingImgs() async {
  try {
    var uri =
        "${api_const.domain}/movie/now_playing?api_key=${api_const.apikey}";
    var url = Uri.parse(uri);
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var nowPlaybody = response.body;
      var jsonBody = jsonDecode(nowPlaybody);
      var nowPlayData = NowplayingModel.fromJson(jsonBody);

      if (nowPlayData.results != null) {
        return nowPlayData.results!;
      }
    } else {
      print("Error: ${response.statusCode}");
    }
  } catch (e) {
    print("Error fetching data: $e");
  }

  List<Result> empty = [];
  return empty;
}
