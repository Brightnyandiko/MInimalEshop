import 'package:flutter/material.dart';
import 'package:minimal_eshop/components/my_drawer.dart';
import 'package:minimal_eshop/models/shop.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final product = context.watch<Shop>().shop;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 50),
            child: const Text(
              "Shop Page",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
