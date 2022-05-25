import 'package:e_commerce_app_1/models/Product.dart';
import 'package:flutter/material.dart';
import 'ProductPromotionTemplate.dart';
import '../../screens/ProductDetailsScreen.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          const SizedBox(height: 10),
          Expanded(child: 
          Stack(
            children: [
              Container(
              margin: const EdgeInsets.only(top: 90, bottom: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                  )
                  ),
              ),
              ListView.builder(
                itemCount: products.length,
                itemBuilder: ((context, index) => ProductPromotionTemplate(
                  itemIndex: index,
                  product: products[index],
                   onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetails(
                            product: products[index],
                      ),
                    ),);}, 
                )),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
