import 'package:flutter/material.dart';
import 'package:flutter_login/components/size.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({Key? key, required this.text}) : super(key: key);
  final String text;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 10, bottom: 5),
          child: Text(text),
        ),
        SizedBox(height: small_gap,),
        TextFormField(
          // #TextFormField
          // - TextField와 유사하게 사용자 입력을 받을 수 있는 입력양식.
          // - 다른 점은 validator속성을 활용하여 유효성 검사를 할 수 있다.
          // - !는 null이 절대 아니다라고 컴파일러에게 알려주는 것.
          // null이면 please~저 글자 찍어줌
          validator: (value) => value!.isEmpty ? "Please enter some text" : null,
          // #obscureText
          // 해당 TextFormField가 password이면 입력 양식을 ***처리
          obscureText: text == "Password" ? true : false, 
          decoration: InputDecoration(
            hintText: "Enter $text",
            //#enabledBorder
            // 해당 TextFormField가 사용가능 상태일때의 디자인
            enabledBorder: OutlineInputBorder(
              // #OutlineInputBorder
              // 기본 TextFormField디자인
              borderRadius: BorderRadius.circular(0),),
              //#focusedBorder
              // 사용자가 해당 폼을 터치했을 때 디자인 변화
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                
                ),
                //#errorBorder
                // 에러났을 때 디자인 변화
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),),
                //#focusedErrorBorder 
                //에러가 발생 후, 손가락을 터치했을 때 디자인 변화
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),),
          ),
        ),

      ],
    );
  }
}
