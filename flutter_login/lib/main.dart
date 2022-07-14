import 'package:flutter/material.dart';
import 'package:flutter_login/pages/home_page.dart';
import 'package:flutter_login/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        // #teme
        // - MaterialApp 안에, ThemeData위젯 사용
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: Colors.black,
            //#primary : 메인색상 지정
            primary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            minimumSize: Size(400, 60),

          ),
        ),

      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/login",
      routes: {
        "/login" :(context) => LoginPage(),
        "/home" :(context) => HomePage(),
      },
    );
  }
}
