//1.
// 구글에서 제공하는 기본 위젯과 테마들을 사용하기 위해서 가져와야 한다.
import 'package:flutter/material.dart';

// #main함수
// - 컴파일러에게 앱의 시작점을 알려준다.
// - void ; 텅 빈. return 값이 비어있음.
// - main 함수가 실행완료되어도 반환되는 값이 없다.

// #runApp
// - 주어진 인자값으로 들어오는 위젯을 루트 위젯으로 만들어 준다.
// - 위젯 트리를 생성해 준다.
// - 플러터, 다트는 문장의 킅은 항상 세미콜론으로 마쳐야 한다.

// #main #runApp -> 함수
// #MyApp -> StatelessWidget상속받은 클래스
void main() => runApp(MyApp()); // 괄호안에 control + p누르면 힌트 준다.

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // #build
  // - 플러터에서 제공하는 모든 위젯은 또 다른 위젯을 리턴하는 build함수를 가지고 있다.
  // build는 자기 위젯 말고 하위위젯 리턴해주는 메서드
  @override
  Widget build(BuildContext context) {
    //플러터에서 제공하는 material디자인을 사용하는 위젯을 상위위젯으로 만들어 준다.
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'my flutter app', //우리앱 설명하는 부분
      theme: ThemeData(primarySwatch: Colors.orange),
      //primarySwatch , 견본 ; 우리가 만들 앱에 사용하는 기본 음영들을 설정한다.
      home: MyHomePage(), // 앱이 처음 시작되었을 때 보여주는 화면
    );
  }
}

// 항상 stateless 위젯 vs stateful위젯 사용할 지 먼저 고민해야 한다.
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Scaffold : 발판을 만들어 준다.
    // 앱을 빨리 만들 수 있도록 가장 많이 사용하는 시각적 레이아웃을 구성해주는 발판이다.
    return Scaffold(
      appBar: AppBar(
        title: const Text('My First App'), // String을 alt + enter -> wrap in a text widget으로 위젯으로 만들어 줘야 한다.
        centerTitle: true,
        shadowColor: Colors.pink,
      ),
      body: Center(
        child: Column(
          children: [
           const Text('Hello 1', style: TextStyle(fontSize: 20)),
           const Text('Hello 2', style: TextStyle(fontSize: 30, backgroundColor: Colors.yellow),),
            Container(child: const Text('피카츄 o w o', textAlign: TextAlign.center, style: TextStyle(fontSize: 30, color: Colors.red),),color: Colors.yellow, height: 50,width: double.infinity,), // Container는 안에 아무것도 없으면 완전 확장, 자식 있으면 자식크기만큼만 줄어듦
          ],
        ),
      ),
    ); 
  }
}
