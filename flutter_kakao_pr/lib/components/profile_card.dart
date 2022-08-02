import 'package:flutter/material.dart';

import '../models/user.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key, required this.user}) : super(key: key);

  final User user;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 20,
        backgroundImage: NetworkImage(user.backgroundImage),
      ),
      title: Text(
        user.name,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      subtitle: Text(
        user.intro,
        style: TextStyle(fontSize: 12),
      ),
    );
  }
}
