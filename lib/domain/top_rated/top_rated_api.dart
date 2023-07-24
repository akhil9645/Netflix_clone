import 'dart:convert';

import 'package:http/http.dart' as http;
// import 'package:netflix_clone/core/constants/api_constants.dart' as api_const;
import 'package:netflix_clone/domain/top_rated/top_rated_model/result.dart';
import 'package:netflix_clone/domain/top_rated/top_rated_model/top_rated_model.dart';

Future<List<Result>> getTopRatedImgs() async {
  try {
    var uri =
        "https://api.themoviedb.org/3/movie/top_rated?api_key=aa66f8b5678ce95e243fc44619e1fd47";
    var url = Uri.parse(uri);
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var topRatedData = response.body;
      var jsonBody = jsonDecode(topRatedData);
      var topRatedResult = TopRatedModel.fromJson(jsonBody);

      if (topRatedResult.results != null) {
        return topRatedResult.results!;
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
