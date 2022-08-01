import 'package:flutter/cupertino.dart';

class Product {
  final String name;
  final double price;
  final String imageurl;
  final String selec;
  Product(this.name, this.price, this.imageurl, this.selec);
}

class ListItem {
  int value;
  String name;
  ListItem(this.value, this.name);
}
