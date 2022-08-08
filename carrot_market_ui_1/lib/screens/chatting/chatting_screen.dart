import 'package:carrot_market_ui_1/models/chat.dart';
import 'package:flutter/material.dart';

import 'components/chatting.dart';

class ChattingScreen extends StatelessWidget {
  const ChattingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("채팅"),
        bottom: const PreferredSize(
            child: Divider(
              thickness: 0.5,
              height: 0.5,
              color: Colors.grey,
            ),
            preferredSize: Size.fromHeight(0.5)),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Center(
            child: Chatting(chat: chatList[index]),
          );
        },
        separatorBuilder: (context, index) => Divider(
          color: Colors.white,
        ),
        itemCount: chatList.length,
      ),
    );
  }
}
