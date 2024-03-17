import 'package:flutter/material.dart';
import 'package:plant_shop_app/constants/const.dart';
import '../../../model/products.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.product, required this.press});

  final Product product;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              height: 300,
              width: 300,
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Hero(
                tag: "${product.id}",
                child: Image.asset(product.image),
              ),
            ),
          ),
          sh(10),
          Text(
            product.title,
            style: TextStyle(color: Color(0xFFACACAC)),
          ),
          Text(
            "\$${product.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          sh(10),
        ],
      ),
    );
  }
}
