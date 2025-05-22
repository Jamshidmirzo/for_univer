import 'package:flutter/material.dart';

class CurrencyLabel extends StatelessWidget {
  final String text;
  const CurrencyLabel({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}