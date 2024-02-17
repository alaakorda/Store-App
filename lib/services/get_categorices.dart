import 'package:store/helper/api.dart';
import 'package:store/models/get_model.dart';

class GetCategoryServices {
  Future<List<ProductModel>> getCategory({required String categoryName}) async {
    List<dynamic> data =
      await  Api().get(url:'https://fakestoreapi.com/products/category/$categoryName');
   
      
      List<ProductModel> category = [];
      for (int i = 0; i < data.length; i++) {
        category.add(ProductModel.fromJson(data[i]));
      }
      return category;
   
  }
}
