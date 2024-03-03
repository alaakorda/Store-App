import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
 CustomButtom({ Key? key, this.onPressed}) : super(key: key);
VoidCallback? onPressed;
@override
Widget build(BuildContext context) {
return ElevatedButton(
onPressed: onPressed,
child: const Text('Update Product'),
);
}
}