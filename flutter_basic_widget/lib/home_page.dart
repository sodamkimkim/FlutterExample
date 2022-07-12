import 'package:flutter/material.dart';

// 지금까지는 상태가 없는 stateless위젯을 사용했다.
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // widget이 아니라 State를 상속받음
  // build에다가 하위 위젯들 작성

  // 상태를 저장할 수 있는 변수를 선언.
  int _counter = 0; // 계속 변경되는 변수라서 final x

  // 메서드(동작) 정의
  void _increment() {
    // 상태를 변경하는 메서드를 만들 때는 반드시 setState라는 메서드 호출.
    // 그 안에 동작을 정의해야 한다.
    setState(() {
      _counter++;
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          ElevatedButton(onPressed: _increment, child: Text('increment'),),
          SizedBox(width: 16,),
          Text('Count : $_counter')
        ],
      ),
    );
  }
}
