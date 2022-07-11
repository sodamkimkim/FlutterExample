import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/components/recipe_menu.dart';
import 'package:flutter_application_1/components/recipe_title.dart';

import '../components/recipe_list_item.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildRecipeAppBar(),
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
      ),
    ); //Scaffold
  }

  AppBar _buildRecipeAppBar() {
    // return 타입은 AppBar, _는 private
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1.0,
      actions: [
        const Icon(
          CupertinoIcons.search,
          color: Colors.black,
        ),
        const SizedBox(width: 15),
        const Icon(
          CupertinoIcons.heart,
          color: Colors.redAccent,
        ),
        const SizedBox(
          width: 15,
        )
      ],
    );
  }
}
