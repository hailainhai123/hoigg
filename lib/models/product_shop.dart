import 'package:flutter/cupertino.dart';

class ProductShop {
   String id;
  final String urlImage;
  final String name;
  final int price;
  final int salePercent;
  final double starRate;
  final List<Color> listColorProduct;
  int countInCart;

  ProductShop({
    required this.id,
    required this.urlImage,
    required this.name,
    required this.price,
    required this.salePercent,
    required this.starRate,
    required this.listColorProduct,
    required this.countInCart
  });

}