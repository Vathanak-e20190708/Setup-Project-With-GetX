import 'package:flutter/material.dart';
import 'package:plant_shop_app/themes/colors/color.dart';

class Product {
  final String image, title, description;
  final int price, id;
  final Color color;

  Product(
      {required this.image,
      required this.title,
      required this.description,
      required this.price,
      required this.id,
      required this.color});
}

List<Product> products = [
  Product(
    id: 1,
    title: "Plants Name",
    price: 10,
    description: dummyText,
    image: "assets/images/pics/1.png",
    color: AppColor.bg,
  ),
  Product(
    id: 2,
    title: "Plants Name",
    price: 10,
    description: dummyText,
    image: "assets/images/pics/2.png",
    color: AppColor.bg,
  ),
  Product(
    id: 3,
    title: "Plants Name",
    price: 10,
    description: dummyText,
    image: "assets/images/pics/3.png",
    color: AppColor.bg,
  ),
  Product(
    id: 4,
    title: "Plants Name",
    price: 10,
    description: dummyText,
    image: "assets/images/pics/4.png",
    color: AppColor.bg,
  ),
  Product(
    id: 5,
    title: "Plants Name",
    price: 10,
    description: dummyText,
    image: "assets/images/pics/5.png",
    color: AppColor.bg,
  ),
  Product(
    id: 6,
    title: "Plants Name",
    price: 10,
    description: dummyText,
    image: "assets/images/pics/6.png",
    color: AppColor.bg,
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
