import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../models/product.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({Key? key, required this.product}) : super(key: key);

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        width: 130,
        height: 110,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(product.urlImage), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(product.title),
            Row(
              children: [
                Text(product.address),
                Text(".", style: TextStyle(fontWeight: FontWeight.bold)),
                Text(product.publishedAt),
              ],
            ),
            Text(product.price),
          ],
        ),
      ),
      Row(
        children: [
          Icon(FontAwesomeIcons.message, color: Colors.grey[600], size: 15),
          SizedBox(width: 5),
          SizedBox(width: 8),
          Icon(FontAwesomeIcons.heart, color: Colors.grey[600], size: 15),
          SizedBox(width: 5),
        ],
      )
    ]);
  }
}
