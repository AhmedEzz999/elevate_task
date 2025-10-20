import 'package:flutter/material.dart';

import 'product_item.dart';
import '../../data/models/product_model/product_model.dart';

class ProductsListView extends StatelessWidget {
  const ProductsListView({required this.productList, super.key});
  final List<ProductModel> productList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: productList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 16,
          childAspectRatio: 2.2 / 3,
        ),
        itemBuilder: (context, index) {
          return ProductItem(product: productList[index]);
        },
      ),
    );
  }
}
