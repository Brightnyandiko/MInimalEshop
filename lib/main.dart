import 'package:flutter/material.dart';
import 'package:minimal_eshop/pages/intropage.dart';
import 'package:minimal_eshop/themes/light_mode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      theme: lightMode,
    );
  }
}

