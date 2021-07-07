import 'package:flutter/material.dart';
import 'package:main_app/componants/ItemWidgets/ItemWidgets.dart';
import 'package:main_app/componants/TodayTimeBars/barsBakgound.dart';


class TodayTimeScreen  extends StatefulWidget {
  const TodayTimeScreen({ Key key }) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<TodayTimeScreen> {
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
            child: IconButton(icon: BackButtonIcon(),onPressed: ()=>{},)
          ),
          backgroundColor: Color(0xFF0C1643),
          shadowColor: null,
          toolbarHeight: 45,
        ),
        body: Stack(
            children: [
              Positioned(child: BarsBackGound(), left: 0,),
              TodayViewItemWidget()],
              alignment: Alignment.center
          ),
    );
       
  }
}