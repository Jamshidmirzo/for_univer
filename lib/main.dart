import 'package:flutter/material.dart';
import 'package:lesson_four/dream_screen.dart';
import 'package:lesson_four/shop_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dream UI',
      home: const ShopScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

