import 'dart:convert';
//import 'dart:html';
import 'package:http/http.dart';
import 'package:testappbd/Http%20Requests/itemsjsonlists.dart';

class HttpService {
  var categoriesURL = "user/getPumpsCategory";
  var baseURL = "http://3.6.1.125/api/v1/";

  Future<List<Categories>> getCategories() async {
    Response res = await post(
      Uri.parse(baseURL + categoriesURL),
      headers: <String, String>{
        'auth-token': 'user_hmwX2dJMVj5MN76',
      },
    );

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Categories> categories = body
          .map(
            (dynamic item) => Categories.fromJson(item),
          )
          .toList();
      print(categories);
      return categories;
    } else {
      throw "Unable to retrieve posts.";
    }
  }
}
