import 'package:flutter/material.dart';
class BasicText extends StatelessWidget {
  const BasicText({
    Key? key,
    required String name,
  }) : _name = name, super(key: key);

  final String _name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          color: Colors.red,
          height: 50,
          child: Text('Hello, $_name! How are you?dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd',            overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: const TextStyle(fontWeight: FontWeight.bold),
          ), //$변수 -> 데이터 가져옴
        ),
        const Text.rich(
          TextSpan(
            
            text: '피카츄',//default text style
            children: [
              TextSpan(text: ' is beautiful',style: TextStyle(fontStyle: FontStyle.italic),),
              TextSpan(text: '  word',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),),

            ]
          )
        )
      ],
    );
  }
}
