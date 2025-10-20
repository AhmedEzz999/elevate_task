import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class ProductRating extends StatelessWidget {
  const ProductRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Row(
          children: [
            Text('Review (4.8)'),
            SizedBox(width: 6),
            Icon(
              Icons.star_rate,
              color: Color(0xFFFFD800),
              size: 28,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
        IconButton(
          padding: const EdgeInsets.all(1.5),
          constraints: const BoxConstraints(),
          style: IconButton.styleFrom(backgroundColor: AppColors.iconColor),
          onPressed: () {},
          icon: const Icon(
            Icons.add,
            color: Colors.white,
            size: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
