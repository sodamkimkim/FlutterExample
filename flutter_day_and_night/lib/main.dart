import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'state full sample', home: DayAndNight());
  }
}

class DayAndNight extends StatelessWidget {
  const DayAndNight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: Today()),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.redAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Today extends StatefulWidget {
  const Today({Key? key}) : super(key: key);

  @override
  State<Today> createState() => _TodayState();
}

class _TodayState extends State<Today> {
  String changeValue = "";

  void changeText() {
    //메서드로 클래스의 동작 지정
    // 메서드가 호출될 때 setState호출해서 값 넣어줘야 랜더링된다.!!!!!!!
    setState(() {
      // 다시 그림 그려라해주는 메서드
      changeValue = (changeValue == "밤") ? "낮" : "밤";
      print("호출됨");

    });
  }

  @override
  void initState() {
    changeValue = "낮"; //이 class객체 생성될 떄 한번만 호출됨.
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        changeText();
      },
      child: Container(
        // Container는 버튼처럼 onpress같은거 없기 때문에 InKWell위젯씀
        height: 400,
        width: double.infinity,
        child: Text(changeValue),
      ),
    );
  }
}
