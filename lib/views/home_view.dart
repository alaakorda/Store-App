import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store/widget/custom_card.dart';

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
        child: Padding(
          padding: const EdgeInsets.only(left:16.0, right: 16.0, top: 100),
          child: GridView.builder(
            clipBehavior: Clip.none,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 100,
                childAspectRatio: 1.5,
              ),
              itemBuilder: (context, index) => const CustomCard()),
        ),
      ),
    );
  }
}
