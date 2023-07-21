import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:netflix_clone/domain/search/for_search/for_search.dart';
import 'package:netflix_clone/domain/search/for_search/result.dart';
import 'package:netflix_clone/core/constants/api_constants.dart' as api_const;

Future<List<Result>> searchImageGet(String name) async {
  var uri =
      "${api_const.domain}/search/movie?query=$name&api_key=${api_const.apikey}";
  var url = Uri.parse(uri);
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var data = response.body;
    var jsonData = jsonDecode(data);
    // print(data);
    var searchModel = ForSearch.fromJson(jsonData);
    if (searchModel.results != null) {
      return searchModel.results!;
    }
  } else {
    print(response.statusCode);
  }
  List<Result> emty = [];

  return emty;
}
