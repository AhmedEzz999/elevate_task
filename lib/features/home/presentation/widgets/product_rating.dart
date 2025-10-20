import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';

class ProductRating extends StatelessWidget {
  const ProductRating({required this.rating, super.key});
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text('Review ($rating)'),
            const SizedBox(width: 6),
            const Icon(
              Icons.star_rate,
              color: Color(0xFFFFD800),
              size: 28,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
        IconButton(
          padding: const EdgeInsets.all(1),
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
