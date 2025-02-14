import 'package:flutter/material.dart';
import 'package:minimal_eshop/models/product.dart';

class MyProductTile extends StatelessWidget {
  final Product product;
  const MyProductTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //product image
          Icon(Icons.favorite),

          //product name
          Text(product.name ?? 'No Name Available'),

          //product description
          Text(product.description ?? 'No Description Available'),

          //product price + add to cart button
          Text(product.price?.toStringAsFixed(2) ?? 'Price Not Available'),
        ],
      ),
    );
  }
}
