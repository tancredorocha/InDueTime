

import 'package:flutter/material.dart';

class HalfHourBar extends StatelessWidget {
  HalfHourBar({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFCAC2E5),
      height: 2,
    );
  }
}
class HourBar extends StatelessWidget {
  HourBar({ Key key , this.time }) : super(key: key);
  final int time;

  Widget timeTxt(){
    if(time==0){
      return Text('12 AM');
    }else if(time<12)
      return Text('$time AM');
    else if(time==12){
      return Text('12 PM');
    }
    else
      return Text('${time-12} PM');
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          timeTxt(),
          SizedBox(),
          Expanded(child: Container(
            color: Color(0xFFCAC2E5),
            height: 2,)
          
            
          )
        ]
      ),
    );
  }
}