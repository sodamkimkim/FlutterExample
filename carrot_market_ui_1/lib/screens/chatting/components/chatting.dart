import 'package:flutter/material.dart';

import '../../../models/chat.dart';

class Chatting extends StatelessWidget {
  const Chatting({Key? key, required this.chat}) : super(key: key);

  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      padding: EdgeInsets.all(10),
      child: Row(children: [
        SizedBox(
          width: 10,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(60),
          child: Image.network(
            width: 60,
            height: 60,
            chat.roomUrlImage,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: 17,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  chat.chattingRoomTitle,
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  chat.address,
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                Text(
                  ".",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                Text(
                  chat.publishedAt,
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                )
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              chat.contentsPreview,
              style: TextStyle(fontSize: 13),
            ),
          ],
        ),
        SizedBox(
          width: 15,
        ),
        Visibility(
          visible: chat.contentImage != "",
          child: _buildContentImg(chat.contentImage),
        )
      ]),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  width: 1.5,
                  color: Color.fromRGBO(51, 51, 51, 0.1),
                  style: BorderStyle.solid))),
    );
  }

  _buildContentImg(String contentImage) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(
        chat.contentImage,
        width: 60,
        height: 60,
        fit: BoxFit.cover,
      ),
    );
  }
}
