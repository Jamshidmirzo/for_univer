import 'package:flutter/material.dart';
import 'package:lesson_four/widgets/first_container_widget.dart';
import 'package:lesson_four/widgets/select_buttons_widget.dart';
import 'package:lesson_four/widgets/texts_widget.dart';

class DreamScreen extends StatelessWidget {
  const DreamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          FirstContainerWidget(),
          const SizedBox(height: 30),
          TextsWidget(),
          const SizedBox(height: 40),
          SelectButtonsWidget(),
        ],
      ),
    );
  }
}
