import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  CustomTextFiled({Key? key, required this.title, this.onChanged}) : super(key: key);
  final String title;
   Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
       onChanged: onChanged,
       keyboardType: title == 'Product price' ? TextInputType.number : TextInputType.text,
      decoration: InputDecoration(
        labelText: title,
        border: OutlineInputBorder(),
      ),
    );
  }
}
