import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:hakathon/model/categoy.dart';

import '../api_settings.dart';

class CategoryApiController {
  Future<List<Category>> getCategories() async {
    var url = Uri.parse(ApiSettings.categories);
    var response = await http.get(url,headers: {
      'Accept': 'application/json',
      'lang': 'en',
    });
    if (response.statusCode == 200) {
      var categoryJsonArray = jsonDecode(response.body)['list'] as List;
      return categoryJsonArray
          .map((jsonObject) => Category.fromJson(jsonObject))
          .toList();
    }
    return [];
  }
}