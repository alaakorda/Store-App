import 'package:store/models/get_model.dart';

import '../helper/api.dart';

class UpDateProduct{
   Future<ProductModel> Updateproduct({
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,
    required String id,
  }) async {
    Map<String, dynamic> data = await Api().put(
      url: 'https://fakestoreapi.com/products/$id',
      body: {
        'title': title,
        'price': price,
        'description': description,
        'image': image,
        'category': category,
      },
    );
    return ProductModel.fromJson(data);
  }
}