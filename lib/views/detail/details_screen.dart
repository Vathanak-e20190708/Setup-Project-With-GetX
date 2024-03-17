import 'package:flutter/material.dart';
import 'package:plant_shop_app/constants/const.dart';
import '../../model/products.dart';
import '../cart/cart_view.dart';
import 'widget/add_to_cart.dart';
import 'widget/color_and_size.dart';
import 'widget/counter_with_fav_btn.dart';
import 'widget/description.dart';
import 'widget/product_title_with_image.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        title: Text("All plants"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, size: 30),
          ),
          IconButton(
            onPressed: () {
              CartView();
            },
            icon: Icon(Icons.shopping_cart, size: 30),
          ),
          sw(10),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: size.height,
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.36),
                    padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: 20,
                      right: 20,
                    ),
                    // height: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: [
                        ColorAndSize(product: product),
                        sh(10),
                        Description(product: product),
                        sh(10),
                        CounterWithFavBtn(),
                        sh(10),
                        AddToCart(product: product)
                      ],
                    ),
                  ),
                  ProductTitleWithImage(product: product)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
