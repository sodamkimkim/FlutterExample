import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'welcome to flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Welcome to Flutter"),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/lake.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection, textSection
          ],
        ),
      ),
    );
  }
}

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                "Oeschiene Lake Campground",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          Text(
            "kandersteg, Swktzerland",
            style: TextStyle(color: Colors.grey[500]),
          )
        ],
      )),
      Icon(Icons.star, color: Colors.red[500]),
      const Text('41')
    ],
  ),
);

Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn(Colors.lightBlue, Icons.call, 'CALL'),
    _buildButtonColumn(Colors.lightBlue, Icons.call, 'ROUTE'),
    _buildButtonColumn(Colors.lightBlue, Icons.call, 'SHARE'),
  ],
);

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}

Widget textSection = const Padding(
  padding: EdgeInsets.all(32),
  child:
      Text('Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
          'Alps. Situated 1,578 meters above sea level, it is one of the '
          'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
          'half-hour walk through pastures and pine forest, leads you to the '
          'lake, which warms to 20 degrees Celsius in the summer. Activities '
          'enjoyed here include rowing, and riding the summer toboggan run.', softWrap: true,),
);
