import 'package:carrot_market_ui_1/screens/main_screen.dart';
import 'package:carrot_market_ui_1/theme.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const CarrotMarketUI());
}

class CarrotMarketUI extends StatelessWidget {
  const CarrotMarketUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "carrot_market_ui",
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      theme: myAppTheme(),
    );
  }
}
