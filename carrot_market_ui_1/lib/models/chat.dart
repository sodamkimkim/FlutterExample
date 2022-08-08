import 'package:flutter/material.dart';

class Chat {
  String chattingRoomTitle;
  String address;
  String publishedAt;
  String contentsPreview;
  String roomUrlImage;
  String contentImage;
  Chat(this.chattingRoomTitle, this.address, this.publishedAt,
      this.contentsPreview, this.roomUrlImage, this.contentImage);
}

final _urlPrefix =
    'https://github.com/flutter-coder/ui_images/blob/master/carrot_product';
List<Chat> chatList = [
  Chat('당근이', '더부동', '1일전', 'developer님, 근처에 다양한 물품들이 아주 많네요.',
      '${_urlPrefix}_3.jpg?raw=true', ""),
  Chat('Flutter', '중동', '2일전', '안녕하세요. 지금 다 예약 상태 인가요?',
      '${_urlPrefix}_2.jpg?raw=true', '${_urlPrefix}_7.jpg?raw=true'),
  Chat('Flutter', '중동', '2일전', '안녕하세요. 지금 다 예약 상태 인가요?',
      '${_urlPrefix}_2.jpg?raw=true', '${_urlPrefix}_7.jpg?raw=true'),
  Chat('Flutter', '중동', '2일전', '안녕하세요. 지금 다 예약 상태 인가요?',
      '${_urlPrefix}_2.jpg?raw=true', '${_urlPrefix}_7.jpg?raw=true'),
  Chat('Flutter', '중동', '2일전', '안녕하세요. 지금 다 예약 상태 인가요?',
      '${_urlPrefix}_2.jpg?raw=true', '${_urlPrefix}_7.jpg?raw=true'),
];
