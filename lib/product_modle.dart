//import 'package:flutter/cupertino.dart';

class ProductModle{
  int id;
  String name;
  num price;
  String imageUrl;
  bool isFavourite;
  ProductModle(
    this.id,
    {this.name,
    this.price,
    this.imageUrl,
   this.isFavourite = false});


}