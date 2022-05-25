import 'package:e_commerce_app_1/constants.dart';
import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    Key? key,
    required this.size, required this.image
  }) : super(key: key);

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        height: size.width * 0.80,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
               height: size.width * 0.70,
               width: size.width * 0.70,
               decoration: const BoxDecoration(
               color: primaryColor,
               shape: BoxShape.circle,
              ),
            ),
            Image.asset(
              image, 
              height: size.width * 0.75,
              width: size.width * 0.75,
              fit: BoxFit.contain,
            )
          ],
        ),
    );
  }
}