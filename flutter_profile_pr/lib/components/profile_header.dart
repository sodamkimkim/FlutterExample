import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 20,
        ),
        _buildHeaderAvater(),
        const SizedBox(
          width: 20,
        ),
        _buildHeaderProfile()
      ],
    );
  }

  Column _buildHeaderProfile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "flutter coding",
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Colors.grey[800]),
        ),
        Text(
          "flutter 개발자 / CEO / CTO ",
          style: TextStyle(fontSize: 20, color: Colors.grey[800]),
        ),
        Text(
          "부트 캠프 1",
          style: TextStyle(fontSize: 15, color: Colors.grey[800]),
        )
      ],
    );
  }

  Widget _buildHeaderAvater() {
    return SizedBox(
      width: 100,
      height: 100,
      child: CircleAvatar(
        backgroundImage: AssetImage("assets/profile.png"),
      ),
    );
  }
}
