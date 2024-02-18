import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:store/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeView.id: (context) => HomeView(),
      },
      initialRoute: HomeView.id,
    );
  }
}
