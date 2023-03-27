import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:kool/category.dart';
import 'package:kool/server_ip.dart';

class DatabaseServices {
  static Future<Category> addCategory(String topic, String userId) async {
    Map data = {
      "topic": topic,
    };

    var body = json.encode(data);
    var url = Uri.parse('http://$serverIp:8080/home/$userId/note/savecategory');

    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: body,
    );

    print(response.body);
    Map responseMap = jsonDecode(response.body);
    Category category = Category.fromMap(responseMap);
    return category;
  }

  static Future<List<Category>> getCategory(String userId) async {
    var url = Uri.parse(
        'http://$serverIp:8080/home/$userId/note/listallcategoryluser');

    final response = await http.get(
      url,
      headers: {'Content-Type': 'application/json'},
    );

    print(response.body);
    List responseList = jsonDecode(response.body);
    List<Category> categorys = [];
    for (Map categoryMap in responseList) {
      Category category = Category.fromMap(categoryMap);
      categorys.add(category);
    }

    return categorys;
  }
}
