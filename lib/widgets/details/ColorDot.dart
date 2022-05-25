import 'package:flutter/material.dart';
import '../../constants.dart';


class ProductColorDot extends StatelessWidget {

  const ProductColorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  final bool isSelected;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.all(3.0),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? Colors.black : Colors.transparent
          ),
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
          
        ),
      ),
    );
  }
}
