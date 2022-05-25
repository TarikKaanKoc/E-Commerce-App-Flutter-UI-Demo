import 'package:e_commerce_app_1/constants.dart';
import 'package:e_commerce_app_1/widgets/home/HomeBody.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: homeAppBar(),
      body: HomeBody(),
    );
  }

  AppBar homeAppBar() {
    
    return AppBar(
  
      backgroundColor: primaryColor,
      elevation: 20,

      title: const Text(
        "E-Commerce App"
        ),
      centerTitle: true,
      leading: IconButton(
      padding: const EdgeInsets.only(right: 0),
      icon: const Icon(
        Icons.menu,
        color: Colors.white,
      ),
      onPressed: () {
      },
    ),
      actions: [
        IconButton(
        padding: const EdgeInsets.only(right: 5),
          icon: const Icon(Icons.add_shopping_cart_outlined),
          onPressed: () {},
        ),
      ],
    );
  }
}

