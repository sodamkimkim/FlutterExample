import 'package:flutter/material.dart';
import 'package:flutter_profile/components/profile_buttons.dart';
import 'package:flutter_profile/components/profile_count_info.dart';
import 'package:flutter_profile/components/profile_drawer.dart';
import 'package:flutter_profile/components/profile_header.dart';
import 'package:flutter_profile/theme.dart';

import 'components/profile_tab.dart';

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
      //theme에 들어가는 데이터 타입은 ThemeData. theme에 control + 클릭 해서 들어가봐
      home: ProfilePage(), // 이건 클래스
      
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildProfileAppBar(),
      body: Column(
        children: [
          SizedBox(height: 20,),
          ProfileHeader(),
          SizedBox(height: 20,),
          ProfileContInfo(),
          SizedBox(height: 20,),
          ProfileButtons(),
          SizedBox(height: 20,),
          Expanded(child: ProfileTab()),
        ],
      ),
  endDrawer: ProfileDrawer(),
    );
  }
}

AppBar _buildProfileAppBar() {
  return AppBar(
    leading: Icon(Icons.arrow_back_ios, color: Colors.grey[500],),
    title: Text("Profile"),
    centerTitle: true,
    backgroundColor: Colors.grey[300],
  );
}
