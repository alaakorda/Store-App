import 'package:flutter/material.dart';
import 'package:store/models/get_model.dart';
import 'package:store/widget/custom_button.dart';
import 'package:store/widget/custom_text_filed.dart';

import '../services/update_product.dart';

class UpdateProduct extends StatelessWidget {
  UpdateProduct({Key? key}) : super(key: key);

  @override
  static String id = 'UpdateProduct';
  String? productName, productDescription, productImage;
  String? productPrice;
  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return Scaffold(
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
                onPressed: () {
                  UpDateProduct().Updateproduct(
                    title: productName!,
                    price: productPrice!,
                    description: productDescription!,
                    image: productImage!,
                    category: product.category,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
