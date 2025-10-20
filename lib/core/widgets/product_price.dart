import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class ProductPrice extends StatelessWidget {
  const ProductPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text('EGP 1200', style: TextStyle(color: AppColors.primaryColor)),
        SizedBox(width: 6),
        Text(
          '1500 EGP',
          style: TextStyle(
            decoration: TextDecoration.lineThrough,
            decorationColor: AppColors.secondaryColor,
            color: AppColors.secondaryColor,
          ),
        ),
      ],
    );
  }
}
