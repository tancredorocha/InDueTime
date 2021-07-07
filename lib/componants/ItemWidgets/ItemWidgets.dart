import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../src/ItemClass.dart';
import 'package:flutter/services.dart' show rootBundle;


class TodayViewItemWidget extends StatefulWidget {
  TodayViewItemWidget({ Key key }) : super(key: key);
  
  @override
  _State createState() => _State();
}

class _State extends State<TodayViewItemWidget> {
  Future<Item> item;
  @override
  void initState(){
    super.initState();
    _getItem();
    
  }
  _getItem() async{
    String str = await rootBundle.loadString('assets/items.json');
    print(str);
    item = Future.value(Item.fromJson(jsonDecode(str)));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
    width: 261,
    height: 81,
    child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
            Container(
                width: 261,
                height: 81,
                child: Stack(
                    children:[Positioned.fill(
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                                width: 261,
                                height: 28,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10), bottomLeft: Radius.circular(0), bottomRight: Radius.circular(0), ),
                                    color: Color(0xff9d9d9d),
                                ),
                                child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children:[
                                      FutureBuilder(
                                        future: item,
                                        builder: (context,snapshot){
                                            switch (snapshot.connectionState) {
                                              case  ConnectionState.none: 
                                                return Text('None');
                                              case  ConnectionState.active: 
                                                return Text('active');
                                              case  ConnectionState.waiting: 
                                                return Text('waiting');
                                              case  ConnectionState.done: 
                                                 return Container(
                                                  width: 261,
                                                  height: 27.68,
                                                  padding: const EdgeInsets.only(left: 7, right: 9, ),
                                                  child: Row(
                                                      mainAxisSize: MainAxisSize.min,
                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children:[
                                                          Text(
                                                              "${snapshot.data.name}-list",
                                                              style: TextStyle(
                                                                  color: Colors.white,
                                                                  fontSize: 14,
                                                              ),
                                                            ),
                                                            Expanded(child: Container()),
                                                            SizedBox(
                                                                width: 107,
                                                                height: 12,
                                                                child: Text(
                                                                    "Time-Time",
                                                                    textAlign: TextAlign.right,
                                                                    style: TextStyle(
                                                                        color: Colors.white,
                                                                        fontSize: 11,
                                                                    ),
                                                                ),
                                                            ),
                                                        ],
                                                    ),
                                                );
                                                break;
                                              default:
                                                return Text('default');
                                            }
                                        },
                                      )
                                    ],
                                ),
                            ),
                        ),
                    ),
                    Container(
                        width: 261,
                        height: 81,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                                BoxShadow(
                                    color: Color(0x19293488),
                                    blurRadius: 15
                                ),
                            ],
                            color: Color(0x7f00a3ff),
                        ),
                    ),],
                ),
            ),
        ],
      ),
    );
  }
}