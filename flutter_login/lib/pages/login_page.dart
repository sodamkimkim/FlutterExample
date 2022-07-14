import 'package:flutter/material.dart';
import 'package:flutter_login/components/custom_form.dart';
import 'package:flutter_login/components/logo.dart';
import 'package:flutter_login/components/size.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: ListView(children: [
          SizedBox(height: xlarge_gap,),
         const Logo(title: "Login"),
         SizedBox(
          height: large_gap,
         ),
         CustomForm(),
        ]),
      ),
    );
  }
}
