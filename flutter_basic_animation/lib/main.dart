import 'package:flutter/material.dart';

import 'home_screen_2.dart';
import 'home_screen_3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen3(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("암시적 애니메이션"),
      ),
      body: FadeImage(),
    );
  }
}

class FadeImage extends StatefulWidget {
  const FadeImage({Key? key}) : super(key: key);

  @override
  State<FadeImage> createState() => _FadeImageState();
}

class _FadeImageState extends State<FadeImage> {
  final String sampleImageUrl =
      "https://images-ext-2.discordapp.net/external/S5hWMcI0PAp2BDD_Ls0mG-cJywMY-wAvbysfM-Fe6hM/https/raw.githubusercontent.com/flutter-coder/ui_images/master/messenger_man_1.jpg?width=533&height=354";
  double opacityValue = 1.0;
  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: opacityValue,
      duration: const Duration(seconds: 2),
      child: Column(
        children: [
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: NetworkImage(sampleImageUrl),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {
              opacityValue = 0.1;
            },
            child: const Text(
              "START",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
