import 'package:flutter/material.dart';

class ProfileButtons extends StatelessWidget {
  const ProfileButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [_buildFollowButton(), _buildMessageButton()],
    );
  }
}

Widget _buildFollowButton() {
  return InkWell(
    onTap: () {
      print("Follow 버튼 클릭됨.");
    },
    child: Container(
      alignment: Alignment.center,
      width: 100,
      height: 45,
      child: Text(
        'Follow',
        style: TextStyle(color: Colors.white),
      ),
      decoration: BoxDecoration(
          color: Colors.orange[300],
          borderRadius: BorderRadius.circular(
            10,
          )),
    ),
  );
}

Widget _buildMessageButton() {
  return InkWell(
    onTap: () {
      print("Message 버튼 클릭됨.");
    },
    child: Container(
      alignment: Alignment.center,
      width: 100,
      height: 45,
      child: Text(
        'Message',
        style: TextStyle(color: Colors.orange[300]),
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 253, 177, 63)),
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}
