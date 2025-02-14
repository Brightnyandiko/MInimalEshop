import 'package:flutter/material.dart';
import 'package:minimal_eshop/models/shop.dart';
import 'package:minimal_eshop/pages/cart_page.dart';
import 'package:minimal_eshop/pages/intropage.dart';
import 'package:minimal_eshop/pages/profile_page.dart';
import 'package:minimal_eshop/pages/shop_page.dart';
import 'package:minimal_eshop/themes/light_mode.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Shop(),
        builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          home: IntroPage(),
          theme: lightMode,
          routes: {
            '/intropage': (context) => const IntroPage(),
            '/shop_page': (context) => const ShopPage(),
            '/cart_page': (context) => const CartPage(),
            '/profile_page': (context) => const ProfilePage()
          },
        ),
    );
  }
}

