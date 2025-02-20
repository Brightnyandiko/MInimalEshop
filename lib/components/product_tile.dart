import 'package:flutter/material.dart';
import 'package:minimal_eshop/components/my_dialog_box.dart';
import 'package:minimal_eshop/models/product.dart';
import 'package:provider/provider.dart';

import '../models/shop.dart';

class MyProductTile extends StatelessWidget {
  final Product product;
  const MyProductTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(12)
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(25),
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //product image
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    width: double.infinity,
                    padding: EdgeInsets.all(25),
                    child: Icon(Icons.favorite)),
              ),

              const SizedBox(height: 25,),

              //product name
              Text(
                product.name ?? 'No Name Available',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22
                ),
              ),

              const SizedBox(height: 10,),

              //product description
              Text(
                product.description ?? 'No Description Available',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary
                ),
              ),
            ],
          ),

          const SizedBox(height: 25,),

          //product price + add to cart button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                  product.price?.toStringAsFixed(2) ?? '\$ Price Not Available',
              ),

              //add to cart button
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: IconButton(
                  onPressed: () {
                    // Provider.of<Shop>(context, listen: false).addToCart(product);
                    context.read<Shop>().addToCart(product);
                    MyDialogBox();
                  },
                  icon: Icon(Icons.add),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
