import 'package:main_app/models/ItemModel.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'dart:async';

class ItemController {
  String url = "";
  Iterable jsons = [];
  List<Item> i = [];
  ItemController() {
    this.url = "";
  }
  ItemController.withURL(String url) {
    this.url = url;
    this._getlist();
  }

  _getlist() async {
    String str = await rootBundle.loadString(url);
    jsons = await jsonDecode(str);
    for (var item in jsons) {
      i.add(Item.fromJson(item));
    }
  }

  getI() {
    if (i.isEmpty) {
      return [1, 2, 3];
    } else {
      return i;
    }
  }
}
