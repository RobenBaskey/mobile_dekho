import 'package:flutter/cupertino.dart';

class ItemModel{
  late final int id;
  late final String title;
  late final VoidCallback press;

  ItemModel(this.id , this.title, this.press);
}