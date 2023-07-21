import 'dart:convert';

import 'package:netflix_clone/core/constants/api_constants.dart' as api_const;
import 'package:netflix_clone/domain/up_coming/up_coming_model/result.dart';
import 'package:netflix_clone/domain/up_coming/up_coming_model/up_coming_model.dart';
import 'package:http/http.dart' as http;

Future<List<Result>> getTvTopRated() async {
  try {
    var uri = "${api_const.domain}/tv/top_rated?api_key=${api_const.apikey}";
    var url = Uri.parse(uri);
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var uoComingbody = response.body;
      var jsonBody = jsonDecode(uoComingbody);
      var upComingData = UpComingModel.fromJson(jsonBody);

      if (upComingData.results != null) {
        return upComingData.results!;
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
