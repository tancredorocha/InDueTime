import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../models/ItemModel.dart';

class TodayViewItemWidget extends StatefulWidget {
  TodayViewItemWidget({Key? key, this.item}) : super(key: key);
  Item? item;
  @override
  _State createState() => _State();
}

class _State extends State<TodayViewItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 261,
      height: widget.item!.estTime! * 81 / 60,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 261,
            height: widget.item!.estTime! * 81 / 60,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 261,
                      height: 28,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                        ),
                        color: Color(0xff9d9d9d),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 261,
                            height: 27.68,
                            padding: const EdgeInsets.only(
                              left: 7,
                              right: 9,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "${widget.item!.name}-list",
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
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 261,
                  height: widget.item!.estTime! * 81 / 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(color: Color(0x19293488), blurRadius: 15),
                    ],
                    color: Color(0x7f00a3ff),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
