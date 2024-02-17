import 'dart:convert';

import 'package:http/http.dart' as http;

class AllCategoriceServices {
  Future<List<dynamic>> getAllCategorice() async {
    http.Response response = await http
        .get(Uri.parse('https://fakestoreapi.com/products/categories'));
    if (response.statusCode == 200) {
  List<dynamic> data = jsonDecode(response.body);
  return data;
}
else {
      throw Exception(
          'there is aproblem with status code ${response.statusCode}');
    }
  }
}
