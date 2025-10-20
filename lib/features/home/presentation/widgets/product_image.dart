import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({required this.imageSource, super.key});
  final String? imageSource;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
      ),
      child: CachedNetworkImage(
        imageUrl: imageSource ?? 'https://via.placeholder.com/150',
        errorWidget: (context, url, error) {
          return const Icon(Icons.error, size: 50);
        },
        fit: BoxFit.fill,
      ),
    );
  }
}
