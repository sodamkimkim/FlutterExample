import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCard(),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("How Center"),
        centerTitle: true,
      ),
  // 화면 정 가운데 배치 공식 기본 1
  // 1. Center위젯은 가로축으로 가운데 정렬
  // 2. 세로축으로 가운데 정렬은 Column + MainAxisAlignment.center
  // 공식 center + Column + MainAxisAlignment.center
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Container(
            color: Colors.amber[200],
            width: 300,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 0,0),
              child: Text("Hello",
              style: TextStyle(backgroundColor: Colors.pink[200]),),
            ),
          ),
          Text("Hello"),
          Text("Hello"),
        ]),
      ),
    );
  }
}
