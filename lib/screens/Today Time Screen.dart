import 'package:flutter/material.dart';
import 'package:main_app/componants/ItemWidgets/ItemWidgets.dart';
import 'package:main_app/componants/TodayTimeBars/barsBakgound.dart';
import 'package:main_app/controllers/ItemController.dart';

class TodayTimeScreen extends StatefulWidget {
  const TodayTimeScreen({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<TodayTimeScreen> {
  ItemController ic = new ItemController.withURL('assets/items.json');
  Future<List<Widget>> itemWidgets;
  void initState() {
    super.initState();
    itemsToWidget();
    // _getItem();
  }

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  void itemsToWidget() async {
    List<Widget> temp = [];
    for (var item in ic.i) {
      print(item.name);
      temp.add(TodayViewItemWidget(item: item));
      itemWidgets = Future.value(temp);
    }
  }

  // _getItem() async {
  //   String str = await rootBundle.loadString('assets/items.json');
  //   Iterable i = jsonDecode(str);
  //   for (var item in i) {
  //     itemWidgets.add(TodayViewItemWidget(
  //       item: Item.fromJson(item),
  //     ));
  //   }
  // }

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
                  Positioned(
                      top: 8,
                      right: 0,
                      child: )
                ]))));
  }
}
class TodayItemList extends StatelessWidget {
  const TodayItemList({ Key? key,Future<List<Widget>> itemWidgets}) : super(key: key){
    this.itemWidgets = itemWidgets;
  };
  Future<List<Widget>> itemWidgets;
  @override
  Widget build(BuildContext context) {
    return Container( child:
      FutureBuilder(
        future: itemWidgets,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
                children: [for (var i in snapshot.data) i]);
          } else {
            return Text("Nothing Here");
          }
        })
    );
  }
}