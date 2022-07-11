import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // const라서 컴파일 시점에 미리 랜더링되어있다.
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StorePage(),
    );
  }
}

class StorePage extends StatelessWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea( // Column에서 alt enter wrap with widget --> widget글자 SafeArea로 바꿔주기
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.all(8.0), // Row위젯에 대한 패딩이 들어간다.
                child: Row(
                children: [
                Text("woman ",style: TextStyle(fontWeight: FontWeight.bold),),
                Spacer(), // 알아서 사이사이 공백 추가해 줌.
                 Text("kids",style: TextStyle(fontWeight: FontWeight.bold),),
                 Spacer(),
                  Text("shoes",style: TextStyle(fontWeight: FontWeight.bold),),
                  Spacer(),
                  Text("Bag", style: TextStyle(fontWeight: FontWeight.bold),)],),
              ),
            ), //Row
          Expanded( // 남은공간까지 사진크기 확장
            child: Image.asset(
              "assets/bag.jpeg", fit: BoxFit.cover,),
          ),
          const SizedBox(
            height: 2,
          ),
          Expanded(child: Image.asset("assets/cloth.jpeg", fit: BoxFit.cover)),
        ],//Children
        ),
      ) //column
      // Column위젯은 부모속성이 될 수 있는 위젯
      // 안에 children vs child
    ); // scaffold -->appbar, body 등 나눠져 있음
  }
}
