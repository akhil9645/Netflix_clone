import "dart:convert";
import "package:http/http.dart" as http;
import "package:netflix_clone/core/constants/api_constants.dart" as api_const;
import "package:netflix_clone/domain/downloads/popular/popular.dart";
import "package:netflix_clone/domain/downloads/popular/result.dart";

Future<List<Result>> popularForDownloads() async {
  var uri =
      "${api_const.domain}tv/popular?api_key=${api_const.apikey}&language=en-US&page=1";
  var url = Uri.parse(uri);
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var popularList = response.body;
    var jsonBody = jsonDecode(popularList);
    var result = Popular.fromJson(jsonBody);
    if (result.results != null) {
      return result.results!;
    }
  } else {
    print(response.statusCode);
  }
  List<Result> emty = [];

  return emty;
}
