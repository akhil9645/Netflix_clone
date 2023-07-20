import 'dart:convert';
import 'package:netflix_clone/domain/trending/trending_api_model/result.dart';
import 'package:netflix_clone/domain/trending/trending_api_model/trending_model.dart';
import 'package:netflix_clone/core/constants/api_constants.dart' as api_const;
import 'package:http/http.dart' as http;

Future<List<Result>> getTrendingImgs() async {
  var uri = "${api_const.domain}/trending/all/week?api_key=${api_const.apikey}";
  var url = Uri.parse(uri);
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var trendingData = response.body;
    var jsonBody = jsonDecode(trendingData);
    var trendingResult = TrendingModel.fromJson(jsonBody);
    if (trendingResult.results != null) {
      return trendingResult.results!;
    }
  } else {
    print(response.statusCode);
  }
  List<Result> emty = [];
  return emty;
}
