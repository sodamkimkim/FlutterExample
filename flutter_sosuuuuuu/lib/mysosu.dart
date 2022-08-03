import 'dart:ffi';

import 'package:flutter/material.dart';

class MySosu extends StatefulWidget {
  const MySosu({Key? key}) : super(key: key);

  @override
  State<MySosu> createState() => _MySosuState();
}

class _MySosuState extends State<MySosu> {
  int num = 0;
  String result = "";
  TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Text(
                "result",
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: TextField(
                onSubmitted: _handleSubmitted(value),
                controller: _textController,
                maxLines: 1,
                decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none),
              ),
            ),
          )
        ],
      ),
    );
  }

  void _handleSubmitted(int value) {
    _textController.clear();
    setState(() {
      num:
      value;
      print(num);
      // 인수가 자기자신과 1밖에 없음
    });
  }
}
