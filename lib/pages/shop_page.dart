import 'package:flutter/material.dart';
import 'package:minimal_eshop/components/my_drawer.dart';
import 'package:minimal_eshop/components/product_tile.dart';
import 'package:minimal_eshop/models/shop.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Center(
          child: Text(
            "Shop Page",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
        ),
        actions: [
          //go to cart button
          IconButton(
              onPressed:() => Navigator.pushNamed(context, '/cart_page'),
              icon: Icon(Icons.shopping_cart_outlined)
          )
        ],
      ),
      drawer: MyDrawer(),
      body: ListView(
        children:[
          const SizedBox(height: 25,),
          //shop subtitle
          Center(
              child: Text(
                  "Pick from a selected list of premium products",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary
                  ),
              )
          ),

          //product items
          SizedBox(
            height: 550,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                padding: EdgeInsets.all(15),
                itemBuilder: (context, index) {
                  //get each individual product from shop
                  final product = products[index];

                  //return as a product tile UI
                  return MyProductTile(product: product);
                }
            ),
          ),
        ]
      ),
    );
  }
}
