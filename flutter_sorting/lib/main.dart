import 'package:flutter/material.dart';

void main() {
  runApp(const MySorting());
}

class MySorting extends StatefulWidget {
  const MySorting({Key? key}) : super(key: key);

  @override
  State<MySorting> createState() => _MySortingState();
}

class _MySortingState extends State<MySorting> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Container(Text("?")));
  }
}
