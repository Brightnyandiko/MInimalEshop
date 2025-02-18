import 'package:flutter/material.dart';
import 'package:minimal_eshop/components/my_drawer.dart';
import 'package:minimal_eshop/models/product.dart';
import 'package:provider/provider.dart';

import '../models/shop.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

void removeItemFromCart (BuildContext context, Product product) {
  // show a dialogbox to ask user to confirm removing  item from cart
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          content: Text("Remove this item from your cart"),
          actions: [
            //cancel button
            MaterialButton(
                onPressed: () => Navigator.pop(context),
                child: Text("Cancel"),
            ),

            //yes button
            MaterialButton(
                onPressed: () {
                  //pop the dialog box
                  Navigator.pop(context);

                  //add to cart
                  context.read<Shop>().removeFromCart(product);
                },
              child: Text("Yes"),
            )
          ],
        ),
    );
  }

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    //get access to the cart
    final cart = context.watch<Shop>().cart;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Text(
                "Cart Page",
                style: TextStyle(
                  fontSize: 24,
                ),
            ),
          ),
        ),
      ),
      drawer: const MyDrawer(),
      body: Column(
        children: [
          //cart list
          Expanded(
              child: ListView.builder(
                  itemCount: cart.length,
                  itemBuilder: (context, index) {
                    //get individual item in cart
                    final item = cart[index];

                    //get individual item in cart
                    return ListTile(
                      title: Text(item.name ?? 'Name Not Available'),
                      subtitle: Text(item.price?.toStringAsFixed(2) ?? 'Price not available'),
                      trailing: IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: () => removeItemFromCart(context, item),
                      ),
                    );
                  }
              )
          )
        ],
      ),
    );
  }
}
