import 'package:flutter/material.dart';
import 'package:main_app/componants/TodayTimeBars/bars.dart';

class WholeHour extends StatelessWidget {
  WholeHour({Key? key, this.time}) : super(key: key);
  final time;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        HourBar(time: time),
        SizedBox(
          height: 30,
        ),
        HalfHourBar(),
        SizedBox(
          height: 30,
        ),
      ],
    ));
  }
}

class BarsBackGound extends StatelessWidget {
  BarsBackGound({Key? key}) : super(key: key);
  final times = [
    0,
    1,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [for (var i in times) WholeHour(time: i)],
    ));
  }
}
