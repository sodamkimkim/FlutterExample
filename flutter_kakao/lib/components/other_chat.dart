import 'package:flutter/material.dart';
import 'package:flutter_kakao/models/user.dart';

class OtherChat extends StatelessWidget {
  const OtherChat(
      {Key? key, required this.name, required this.text, required this.time})
      : super(key: key);

  final String name;
  final String text;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(friends[0].backgroundImage),
        ),
        SizedBox(
          width: 10,
        ),
        Flexible(
          flex: 1, //default : c, r, 기본 축에 남은 공간을 어떻게 차지하게 될 것인지 정해줌
          fit: FlexFit
              .loose, // default: 기본 축의 남은 공간을 채우도록 하되, 필요한 공간만큼 차지하도록 설정된다. FlexFit.tight: 기본축에서 남은 공간을 전부 채우도록 함.
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  name,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Container(
                child: Text(text),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Colors.white),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Flexible(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(time,
                style: TextStyle(fontSize: 12, color: Colors.blueGrey[300])),
          ),
        ),
      ],
    );
  }
}
