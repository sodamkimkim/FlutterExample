import 'package:flutter/material.dart';
import 'package:flutter_profile_pr/components/profile_count_info.dart';
import 'package:flutter_profile_pr/components/profile_header.dart';
import 'package:flutter_profile_pr/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(), // 이건 함수
      home: ProfilePage(), // 이건 클래스
    ); // MaterialApp
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildProfileAppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          ProfileHeader(),
          SizedBox(
            height: 20,
          ),
          ProfileCountInfo(),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

AppBar _buildProfileAppBar() {
  return AppBar(
    leading: Icon(
      Icons.arrow_back_ios,
      color: Colors.grey[500],
    ),
    title: Text("Profile", style: TextStyle(color: Colors.orange[300])),
    centerTitle: true,
    backgroundColor: Colors.grey[300],
  );
}
