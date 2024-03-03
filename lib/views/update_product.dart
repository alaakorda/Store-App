import 'package:flutter/material.dart';
import 'package:store/widget/custom_text_filed.dart';

class UpdateProduct extends StatelessWidget {
  const UpdateProduct({Key? key}) : super(key: key);

  @override
  static String id = 'UpdateProduct';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Product'),
      ),
      body:  Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(children: [
          CustomTextFiled(title: 'Product Name'),
          SizedBox(
            height: 20,
          ),
          CustomTextFiled(title: 'Product price',),
          SizedBox(
            height: 20,
          ),
          CustomTextFiled(title: '',),
          SizedBox(
            height: 20,
          ),
          CustomTextFiled(title: '',),
        ]),
      ),
    );
  }
}
