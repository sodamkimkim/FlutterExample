import 'package:flutter/material.dart';

TextStyle h4({Color mColor = Colors.black}) {
  //선택적 매개변수로 color받기
  return TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: mColor);
}

TextStyle h5({Color mColor = Colors.black}) {
  //선택적 매개변수로 color받기
  return TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: mColor);
}

TextStyle subtitle1({Color mColor = Colors.black}) {
  //선택적 매개변수로 color받기
  return TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: mColor);
}

TextStyle subtitle2({Color mColor = Colors.black}) {
  //선택적 매개변수로 color받기
  return TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: mColor);
}

TextStyle overLine({Color mColor = Colors.black}) {
  //선택적 매개변수로 color받기
  return TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: mColor);
}

TextStyle body1({Color mColor = Colors.black}) {
  //선택적 매개변수로 color받기
  return TextStyle(fontSize: 16, color: mColor);
}
