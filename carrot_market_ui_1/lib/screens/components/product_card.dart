import 'package:flutter/material.dart';

import '../../models/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 5,
      leading: Container(
        decoration: BoxDecoration(color: Colors.amber),
        width: 100,
        child: Image.network(product.urlToImage, fit: BoxFit.cover),
      ),
      title: Text(
        product.title,
        style: TextStyle(fontSize: 16),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.address,
            style: TextStyle(fontSize: 12),
          ),
          Text(
            product.price,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
