import 'package:dd/components/recipe_list_item.dart';
import 'package:dd/components/recipe_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../components/recipe_menu.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            _buildRecipeAppBar(), // AppBar는 현재 화면의 title, leading, action영역 표시
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              RecipeTitle(),
              RecipeMenu(),
              RecipeListItem(imageName: "coffee", title: "Made Coffee"),
              RecipeListItem(imageName: "burger", title: "Made Burger"),
              RecipeListItem(imageName: "pizza", title: "Made Pizza"),
            ],
          ),
        ));
  }

  AppBar _buildRecipeAppBar() {
    // return타입은 AppBar, _는 private의미
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1.0, // 약간 그림자효과
      actions: [
        const Icon(
          CupertinoIcons.search,
          color: Colors.black,
        ), //Icon
        const SizedBox(width: 15),
        const Icon(
          CupertinoIcons.heart,
          color: Colors.redAccent,
        ),
        const SizedBox(width: 15),
      ],
    );
  }
}
