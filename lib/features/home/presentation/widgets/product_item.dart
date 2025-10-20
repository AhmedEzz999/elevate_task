import 'package:flutter/material.dart';

import '../../data/models/product_model/product_model.dart';
import '../../../../core/utils/app_colors.dart';
import 'product_image.dart';
import 'product_price.dart';
import 'product_rating.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({required this.product, super.key});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.borderColor, width: 2),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              Expanded(child: ProductImage(imageSource: product.image)),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.title ?? '',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(color: AppColors.primaryColor),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        product.description ?? '',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(color: AppColors.primaryColor),
                      ),
                      const SizedBox(height: 6),
                      ProductPrice(productPrice: product.price ?? 0),
                      ProductRating(rating: product.rating?.rate ?? 0),
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
