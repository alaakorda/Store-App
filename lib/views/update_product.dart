import 'package:flutter/material.dart';
import 'package:store/models/get_model.dart';
import 'package:store/widget/custom_button.dart';
import 'package:store/widget/custom_text_filed.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../services/update_product.dart';

class UpdateProduct extends StatefulWidget {
  UpdateProduct({Key? key}) : super(key: key);

  static String id = 'UpdateProduct';

  @override
  State<UpdateProduct> createState() => _UpdateProductState();
}

class _UpdateProductState extends State<UpdateProduct> {
  String? productName, productDescription, productImage;

  String? productPrice;
  bool isLoding = false;

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isLoding,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Update Product'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                CustomTextFiled(
                  title: 'Product Name',
                  onChanged: (data) {
                    productName = data;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFiled(
                  title: 'Product description',
                  onChanged: (data) {
                    productDescription = data;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFiled(
                  title: 'Product price',
                  onChanged: (data) {
                    productPrice = data;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFiled(
                  title: 'Product image',
                  onChanged: (data) {
                    productImage = data;
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomButtom(
                  onPressed: () async {
                    isLoding = true;
                    setState(() {});
                      await updateProducts(product);
                    try {
                    
                      print('sccess');
                    } catch (e) {
                      print('error');
                    }
                    isLoding = false;
                    setState(() {});
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> updateProducts(ProductModel product) async {
    await UpDateProduct().Updateproduct(
      id: product.id,
      title: productName == null ? product.title : productName!,
      price: productPrice == null ? product.price.toString() : productPrice!,
      description: productDescription == null
          ? product.description
          : productDescription!,
      image: productImage == null ? product.image : productImage!,
      category: product.category,
    );
  }
}
