import 'package:flutter/material.dart';
import 'package:flutter_login/components/custom_text_form_field.dart';
import 'package:flutter_login/components/size.dart';

class CustomForm extends StatelessWidget {
  const CustomForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // form의 상태를 가지는 key 선언
    final _formKey = GlobalKey<FormState>();
    return Form(
        key: _formKey,
        child: Column(
          children: [
            CustomTextFormField(text: "Email"),
            SizedBox(
              height: medium_gap,
            ),
            CustomTextFormField(text: "Password"),
            SizedBox(
              height: large_gap,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: TextButton(
                  onPressed: () {
                    // if문
                    // Form 위젯 안에 모든 TextFormField값이 비어있는지 확인하고
                    // 비어있으면 false,
                    // 비어있지 않으면 true리턴.
                    // true면 화면 이동
                    if (_formKey.currentState!.validate()) {
                      // cotext는 내가 어떤 화면에서 출발했는지.
                      Navigator.pushNamed(context, "/home");
                    }
                  },
                  child: Text("Login")),
            )
          ],
        ));
  }
}
