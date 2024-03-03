import 'package:flutter/material.dart';
import 'package:store/widget/custom_button.dart';
import 'package:store/widget/custom_text_filed.dart';

class UpdateProduct extends StatelessWidget {
   UpdateProduct({Key? key}) : super(key: key);

  @override
  static String id = 'UpdateProduct';
  String? productName, productDescription, productImage;
  int? productPrice;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Product'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
          
            children: [
               SizedBox(
              height: 100,
            ),
              CustomTextFiled(title: 'Product Name',onChanged: (data){
                productName = data;
              },),
              const SizedBox(
                height: 20,
              ),
                CustomTextFiled(
                title: 'Product description',
                onChanged: (data){
                productDescription = data;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFiled(
                title: 'Product price',
                onChanged: (data){
                productPrice = int.parse(data);
                },
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFiled(
                title: 'Product image',
                onChanged: (data){
                productImage = data;
                
                },
              ),
              const SizedBox(
                height: 40,
              ),
              CustomButtom()
              
            ],
          ),
        ),
      ),
    );
  }
}
