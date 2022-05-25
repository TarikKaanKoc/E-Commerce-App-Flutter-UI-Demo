import 'package:e_commerce_app_1/constants.dart';
import 'package:e_commerce_app_1/models/Product.dart';
import 'package:e_commerce_app_1/widgets/home/ProductDetailsBody.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: ProductDetailsAppBar(context),
      body: DetailsBody(product: product,), 
      );
  }

  AppBar ProductDetailsAppBar(BuildContext context) {
    return AppBar(
      elevation: 20,
      backgroundColor: primaryColor,
      title: Text(
        product.title,
        maxLines: 1,
        style: const TextStyle(color: Colors.white)
      ),
   leading: IconButton(
      padding: const EdgeInsets.only(right: 0),
      icon: const Icon(
        Icons.arrow_back,
        color: Colors.white,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    actions: [
      IconButton(
        padding: const EdgeInsets.only(right: 5),
        icon: const Icon(Icons.add_shopping_cart_outlined, color: Colors.white),
        onPressed: () {},
      ),
    ],
  );
  }
}