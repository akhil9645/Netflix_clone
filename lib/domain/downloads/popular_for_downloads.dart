import "dart:convert";
import "package:http/http.dart" as http;
// import "package:netflix_clone/core/constants/api_constants.dart" as api_const;
import "package:netflix_clone/domain/popular/popular.dart";
import "package:netflix_clone/domain/popular/result.dart";

Future<List<Result>> popularForDownloads() async {
  var uri =
      "https://api.themoviedb.org/3/tv/popular?api_key=aa66f8b5678ce95e243fc44619e1fd47";
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
