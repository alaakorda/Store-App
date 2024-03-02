import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 230,
          height: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    blurRadius: 50,
                    color: const Color.fromARGB(255, 219, 218, 218)
                        .withOpacity(0.1),
                    spreadRadius: 10,
                    offset: const Offset(1, 1)),
              ]),
          child: const Card(
            elevation: 5,
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
                    height: 3,
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
                ],
              ),
            ),
          ),
        ),
        Positioned(
         left: 30,top: -130,
          child: Image.asset(
            'assets/vecteezy_isolated-black-t-shirt-white-hanger_8847294.png',
            width: 200,
            height: 200,
          ),
        ),
      ],
    );
  }
}
