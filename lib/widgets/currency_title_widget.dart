import 'package:flutter/material.dart';

class CurrencyTitle extends StatelessWidget {
  const CurrencyTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Currency \nConverter',
      style: TextStyle(
        color: Colors.blue,
        fontSize: 40,
        fontWeight: FontWeight.bold,
        height: 1.1,
      ),
    );
  }
}

