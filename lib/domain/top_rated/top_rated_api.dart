import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:netflix_clone/core/constants/api_constants.dart';
import 'package:netflix_clone/domain/top_rated/top_rated_model/result.dart';
import 'package:netflix_clone/domain/top_rated/top_rated_model/top_rated_model.dart';

Future<List<Result>> getTopRatedImgs() async {
  var uri = "$domain/movie/top_rated?api_key=$apikey}";
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
    print(response.statusCode);
  }
  List<Result> emty = [];
  return emty;
}
