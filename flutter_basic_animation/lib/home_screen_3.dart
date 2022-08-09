import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen3 extends StatefulWidget {
  const HomeScreen3({Key? key}) : super(key: key);

  @override
  State<HomeScreen3> createState() => _HomeScreen3State();
}

class _HomeScreen3State extends State<HomeScreen3> {
  double _width = 200;
  double _height = 50;
  Color _color = Colors.amber;
  bool selected = false;
  Icon _btnIcon = Icon(Icons.radio_button_checked);
  Color _colorOpacity = Color.fromRGBO(51, 51, 51, 1);
  double _secondValue = 30;
  double _thirdValue = 60;
  double _fourthValue = 90;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('늘어났다가 줄어들었다가'),
        ),
        body: Center(
          child: AnimatedContainer(
            width: _width,
            height: _height,
            decoration: BoxDecoration(
                color: _color, borderRadius: BorderRadius.circular(50)),
            duration: const Duration(milliseconds: 1000),
            child: Stack(
              children: [
                Positioned(
                    child: AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.bounceIn,
                        child: InkWell(
                            onTap: () {
                              setState(() {
                                selected = !selected;
                                _btnIcon = selected
                                    ? Icon(Icons.ac_unit_outlined)
                                    : Icon(Icons.radio_button_checked);
                                _width = selected ? 200 : 100;
                                _colorOpacity = selected
                                    ? Color.fromRGBO(51, 51, 51, 0)
                                    : Color.fromRGBO(51, 51, 51, 1);
                                _secondValue = selected ? 0 : 30;
                                _thirdValue = selected ? 0 : 60;
                                _fourthValue = selected ? 0 : 90;
                              });
                            },
                            child: _btnIcon)),
                    bottom: 15,
                    left: 0),
                Positioned(
                    child: AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.bounceIn,
                        child: InkWell(
                            onTap: () {
                              setState(() {});
                            },
                            child: Icon(Icons.accessibility_new_sharp))),
                    bottom: 15,
                    left: _secondValue),
              ],
            ),
          ),
        ));
  }
}

/* 

Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      selected = !selected;
                      _width = selected ? 500 : 100;

                      print(selected);
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(color: Colors.blue[100]),
                    child: Text("버튼"),
                  ),
                ),
                Text("d"),
                Text("d"),
                Text("d"),
                Text("d")
              ],
            ) */