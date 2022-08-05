import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/product.dart';
import 'components/product_card.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          Expanded(
            child: ListView(
                children: List.generate(
              productList.length,
              (index) => ProductCard(product: productList[index]),
            )),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: "홈",
            icon: Icon(CupertinoIcons.home),
          ),
          BottomNavigationBarItem(
            label: "채팅",
            icon: Icon(CupertinoIcons.chat_bubble),
          )
        ],
      ),
    );
  }
}
