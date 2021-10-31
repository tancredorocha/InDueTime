import 'package:main_app/models/ItemModel.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class ListController {
  String url = "";
  Iterable jsons = [];
  List<Item> i = [];
  ListController() {
    this.url = "";
  }
  ListController.withURL(String url) {
    this.url = url;
    this._getlist();
  }

  _getlist() async {
    String str = await rootBundle.loadString(url);
    Iterable jsons = await jsonDecode(str);
    await _importJsons();
    for (var item in jsons) {
      print(item);
      i.add(Item.fromJson(item));
    }
  }

  _importJsons() async {
    // ignore: unused_local_variable

    print("!!!!");
    print(jsons);
    print("!!!!");
  }
}
