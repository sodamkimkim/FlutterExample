import 'package:carrot_market_ui_1/models/chat.dart';
import 'package:carrot_market_ui_1/models/chat_message.dart';
import 'package:carrot_market_ui_1/screens/components/appbar_preferrend_size.dart';
import 'package:flutter/material.dart';

import 'components/chat_container.dart';
import 'components/chatting.dart';

class ChattingScreen extends StatelessWidget {
  const ChattingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("채팅"),
        bottom: appBarBottomLine(),
      ),
      body: ListView(
        // index로 반복돌면서 chatContainer그려줄거야
        children: List.generate(chatMessageList.length,
            (index) => ChatContainer(chatMessage: chatMessageList[index])),
      ),
    );
  }
}
