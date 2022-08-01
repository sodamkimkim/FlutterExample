import 'package:flutter/material.dart';
import 'package:flutter_demo_mvc/screens/home_screen.dart';
// 뷰단은 컨트롤러만 바라보도록 이벤트 컨트롤러 같은거만

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter rest api ex",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.orange[100],
        appBarTheme: AppBarTheme(
          elevation: 0.0,
        ),
      ),
      home: HomeScreen(),
    );
  }
}
