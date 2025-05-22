import 'package:flutter/material.dart';
import 'package:lesson_four/widgets/currency_app_bar_widget.dart';
import 'package:lesson_four/widgets/currency_buttons_widget.dart';
import 'package:lesson_four/widgets/currency_label_widget.dart';
import 'package:lesson_four/widgets/currency_title_widget.dart';
import 'package:lesson_four/widgets/results_widgets.dart';

class CurrencyScreen extends StatelessWidget {
  const CurrencyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CurrencyAppBar(),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CurrencyTitle(),
            SizedBox(height: 20),
            CurrencyLabel(text: 'From'),
            SizedBox(height: 10),
            CurrencyDropdownTile(country: 'Algeria'),
            SizedBox(height: 20),
            CurrencyLabel(text: 'To'),
            SizedBox(height: 10),
            CurrencyDropdownTile(country: 'Brasil'),
            SizedBox(height: 40),
            ConvertButton(),
            SizedBox(height: 20),
            ResultHeader(),
            SizedBox(height: 10),
            ResultContainer(text: 'Amount'),
          ],
        ),
      ),
    );
  }
}
