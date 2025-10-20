import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
      ),
      child: CachedNetworkImage(
        width: double.infinity,
        imageUrl:
            'https://snworksceo.imgix.net/ttd/dd98cc9a-86ba-4ff5-8395-3084026f7efd.sized-1000x1000.jpg?w=1000&dpr=2',
        fit: BoxFit.fill,
      ),
    );
  }
}
