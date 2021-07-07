import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:main_app/componants/ItemWidgets/ItemWidgets.dart';
import 'package:main_app/componants/TodayTimeBars/barsBakgound.dart';
import 'package:main_app/models/ItemClass.dart';

class TodayTimeScreen extends StatefulWidget {
  const TodayTimeScreen({Key key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<TodayTimeScreen> {
  Future<Item> item;
  void initState() {
    super.initState();
    _getItem();
  }

  _getItem() async {
    String str = await rootBundle.loadString('assets/items.json');
    print(str);
    item = Future.value(Item.fromJson(jsonDecode(str)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Container(
              height: 45,
              width: 45,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFF242D55)),
              child: IconButton(
                icon: BackButtonIcon(),
                onPressed: () => {},
              )),
          backgroundColor: Color(0xFF0C1643),
          shadowColor: null,
          toolbarHeight: 45,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(24, 0, 25, 0),
              child: Stack(children: [
                BarsBackGound(),
                Positioned(child: TodayViewItemWidget(item: item), right: 0)
              ])),
        ));
  }
}
