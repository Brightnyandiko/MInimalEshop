import 'package:flutter/material.dart';
import 'package:minimal_eshop/components/my_drawer.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(
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
      drawer: MyDrawer(),

      // body: ListView.builder(itemBuilder: itemBuilder),
    );
  }
}
