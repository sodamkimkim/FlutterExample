import 'package:carrot_market_ui_1/models/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Row(
          children: [
            const Text("좌동"),
            const SizedBox(
              width: 4.0,
            ),
            const Icon(CupertinoIcons.chevron_down, size: 15)
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.search)),
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.list_dash)),
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.bell)),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0.5),
          child: Divider(
            thickness: 0.5,
            height: 0.5,
            color: Colors.grey,
          ),
        ),
      ),
      body: ListView.seperated(
        itemBuilder: (context, index) {
          return Container(
            child: Text("index : $index"),
          );
        },
        seperatorBuilder: (context, index) => Divider(),
        itemCount: productList.length,
      ),
    );
  }
}
