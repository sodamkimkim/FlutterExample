import 'package:flutter/material.dart';
import 'package:flutter_basic_widget/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final String _name = "홍길동";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // MaterialApp안에는 child속성이 없고 home으로 바꿔준다.
      home: Scaffold(
        //Scaffold에도 child없기 때문에 body로 바꿔준다.
        body: SafeArea(
          child: HomePage(),
        ),
      ),
    );
  }
}

class BasicGesture extends StatelessWidget {
  const BasicGesture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("눌러 졌네요!!!");
      },
      child: Container(
        width: 100,
        height: 100,
        color: Colors.amber,
      ),
    );
  }
}

class BasicContainer extends StatelessWidget {
  const BasicContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(10.0),
        width: 480.0,
        height: 480.0,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
        ),
      ),
    );
  }
}

class BasicStack extends StatelessWidget {
  const BasicStack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 100,
          color: Colors.yellow,
        ),
        Container(
          width: 90,
          height: 90,
          color: Colors.black,
        ),
        Container(
          width: 80,
          height: 80,
          color: Colors.red,
        ),
      ],
    );
  }
}

class BasicRow extends StatelessWidget {
  const BasicRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(child: const FlutterLogo()),
        Expanded(
            child: const Text(
                "Flutter's hot reload helps you quickly and easily experiment, build UIs, add features, and fix bug faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android.")),
        Expanded(child: const Icon(Icons.sentiment_very_satisfied)),
      ],
    );
  }
}
