import 'package:e_commerce_app_1/models/Product.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app_1/constants.dart';
import '../details/ColorDot.dart';
import '../details/ProductDetailsImage.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({Key? key, required this.product,  }) : super(key: key);
  
  final Product product;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 30),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ProductImage(
                  size: size,
                  image: product.image, 
                  ),
              ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      ProductColorDot(
                        color: Colors.blue,
                        isSelected: false,
                      ),
                       ProductColorDot(
                        color: Colors.red,
                        isSelected: false,
                      ),
                       ProductColorDot(
                        color: Colors.black,
                        isSelected: true,
                      ),
                    ],
                  ),
                ),
                   const Padding(
                padding:
                    EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Price', 
                  style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold , fontSize: 17) ,
                ), 
              ),
              Text(
                '\$${product.price}',
                style: const TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w600,
                  color: primaryColor,
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 10,
          ),
      ),],
    );
  }
}
