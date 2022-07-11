import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {
  final String imageName;
  final String title;

  const RecipeListItem({Key? key, required this.imageName, required this.title})
  : super(key: key);
  @override
  Widget build(BuildContext context) {
    //build는 위젯을 return 하는 메서드
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 2 / 1, // width 2 : height 1 비율로 만듦. 디바이스에 따라 이미지 사이즈 자동조절.
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("assets/images/${imageName}.jpeg",
              fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10,),
          Text(title, style: TextStyle(fontSize: 20),),
          Text("Have you ever made your own $title Once you've tried a homemade ${title} you'll never go back.",
           style: TextStyle(
            color: Colors.grey,
            fontSize: 12),),
        ],
      ),
    );
  }
}
