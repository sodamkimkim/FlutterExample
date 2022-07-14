import 'dart:ui';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Logo extends StatelessWidget {
  const Logo({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Column(
   children: [
    //확장명 .svg를 바로 쓸 수 없어서 flutter_svg/flutter_svg.dart 라이브러리 땡겨온거임
    SvgPicture.asset("assets/logo.svg",
    width: 70,
    height: 70,
    ),

    // null대체연산자 ??. null이면 Logo찍어줌.
    Text(title ?? "Logo", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold))
   ],
   
    );
  }
}
