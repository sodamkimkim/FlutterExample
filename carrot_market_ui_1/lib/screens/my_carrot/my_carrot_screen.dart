import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyCarrotScreen extends StatelessWidget {
  const MyCarrotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "나의 당근",
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.settings),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(5),
          child: Divider(
            color: Colors.grey[300],
            thickness: 2,
            height: 5,
          ),
        ),
      ),
      body: Container(
        color: Colors.grey[200],
        child: ListView(
          children: [
            MyCarrotProfile(),
            SizedBox(height: 7),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              color: Colors.white,
              child: Column(
                children: [
                  ListItem(icon: FontAwesomeIcons.locationDot, text: "내 동네 설정"),
                  ListItem(
                      icon: FontAwesomeIcons.downLeftAndUpRightToCenter,
                      text: "동네 인증하기"),
                  ListItem(icon: FontAwesomeIcons.tag, text: "키워드 알림"),
                  ListItem(
                      icon: FontAwesomeIcons.tableCellsLarge, text: "모아보기"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
