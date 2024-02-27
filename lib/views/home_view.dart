import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'HomeView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Trend'),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.cartPlus,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Center(
          child: Container(
        width: 250,
        height: 150,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(20), boxShadow: [
          BoxShadow(
              blurRadius: 50,
              color: const Color.fromARGB(255, 219, 218, 218).withOpacity(0.1),
              spreadRadius: 10,
              offset: const Offset(10, 10)),
        ]),
        child: const Card(
          elevation: 8,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hand Bag LV',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(r'$255'),
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                    ],
                  )
                ]),
          ),
        ),
      )),
    );
  }
}
