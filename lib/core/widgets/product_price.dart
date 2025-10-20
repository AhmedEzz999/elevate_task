import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class ProductPrice extends StatelessWidget {
  const ProductPrice({required this.productPrice, super.key});
  final num productPrice;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$productPrice',
          style: const TextStyle(color: AppColors.primaryColor),
        ),
        const SizedBox(width: 6),
        Text(
          '${(productPrice * 1.25).toInt()}', // API doesn't return price before discount
          style: const TextStyle(
            decoration: TextDecoration.lineThrough,
            decorationColor: AppColors.secondaryColor,
            color: AppColors.secondaryColor,
          ),
        ),
      ],
    );
  }
}
