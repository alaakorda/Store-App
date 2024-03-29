import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:store/views/home_view.dart';
import 'package:store/views/update_product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeView.id: (context) => HomeView(),
         UpdateProduct.id: (context) => UpdateProduct(),
      },
      initialRoute: HomeView.id,
     
    );
  }
}
