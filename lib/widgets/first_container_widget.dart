import 'package:flutter/material.dart';

class FirstContainerWidget extends StatelessWidget {
  const FirstContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 144, 69, 161),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
      child: Center(
        child: Image.asset(
          'assets/rocket.png',
          height: 250,
        ),
      ),
    );
  }
}
