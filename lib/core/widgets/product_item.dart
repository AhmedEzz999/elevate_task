import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import 'product_image.dart';
import 'product_price.dart';
import 'product_rating.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.borderColor, width: 2),
            borderRadius: BorderRadius.circular(16),
          ),
          child: const Column(
            children: [
              Expanded(child: ProductImage()),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 6),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Nike Air Jordon Nike shoes flexible Nike Air Jordon Nike shoes flexible',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: AppColors.primaryColor),
                      ),
                      SizedBox(height: 8),
                      ProductPrice(),
                      ProductRating(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 4,
          top: 4,
          child: IconButton(
            padding: const EdgeInsets.all(2),
            constraints: const BoxConstraints(),
            style: IconButton.styleFrom(backgroundColor: Colors.white),
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border,
              color: AppColors.primaryColor,
              size: 28,
            ),
          ),
        ),
      ],
    );
  }
}
