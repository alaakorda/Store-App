import 'package:flutter/material.dart';
import 'package:store/models/get_model.dart';
import 'package:store/views/update_product.dart';

class CustomCard extends StatelessWidget {
  CustomCard({required this.product, Key? key}) : super(key: key);
  ProductModel product;
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        GestureDetector(
           onTap: () {
                        Navigator.pushNamed(
                          context,
                          UpdateProduct.id,
                          arguments: product,

                        );
                      },
          child: Container(
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
            child: Card(
              elevation: 5,
              color: Colors.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title.substring(0, 6),
                      style: const TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(r'$' '${product.price.toString()}',
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.start),
                        const Icon(
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
        ),
        Positioned(
          left: 80,
          top: -90,
          child: Image.network(
            product.image,
            width: 100,
            height: 150,
          ),
        ),
      ],
    );
  }
}
