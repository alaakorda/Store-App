import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store/models/get_model.dart';

class GetCategoryServices {
  Future<List<ProductModel>> getCategory({required String categoryName}) async {
    http.Response response = await http.get(
        Uri.parse('https://fakestoreapi.com/products/category/$categoryName'));
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      List<ProductModel> category = [];
      for (int i = 0; i < data.length; i++) {
        category.add(ProductModel.fromJson(data[i]));
      }
      return category;
    } else {
      throw Exception(
          'there is aproblem with status code ${response.statusCode}');
    }
  }
}
