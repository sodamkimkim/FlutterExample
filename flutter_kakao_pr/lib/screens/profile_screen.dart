import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/user.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(user.backgroundImage),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              FontAwesomeIcons.xmark,
              size: 25,
              color: Colors.white,
            ),
          ),
          actions: [
            RoundIconButton(icon: FontAwesomeIcons.gift),
            SizedBox(
              width: 15,
            ),
            RoundIconButton(icon: FontAwesomeIcons.cog),
            SizedBox(
              width: 20,
            )
          ],
        ),
        body: Column(children: [
           
        ],)
      ),
    );
  }
}
