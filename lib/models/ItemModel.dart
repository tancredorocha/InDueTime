class Item {
  Id? iId;
  String? name;
  bool? done;
  int? estTime;
  String? dueDate;
  bool? isRepeat;
  String? repeatString;
  String? des;
  int? idItem;
  int? idList;
  int? idSubList;
  int? idUser;

  Item(
      {this.iId,
      this.name,
      this.done,
      this.estTime,
      this.dueDate,
      this.isRepeat,
      this.repeatString,
      this.des,
      this.idItem,
      this.idList,
      this.idSubList,
      this.idUser});

  Item.fromJson(Map<String, dynamic> json) {
    iId = json['_id'] != null ? new Id.fromJson(json['_id']) : null;
    name = json['name'];
    done = int.parse(json['done']) == 0 ? false : true;
    estTime = int.parse(json['estTime']);
    dueDate = json['dueDate'];
    isRepeat = int.parse(json['isRepeat']) == 0 ? false : true;
    repeatString = json['repeatString'];
    des = json['des'];
    idItem = int.parse(json['idItem']);
    idList = int.parse(json['idList']);
    idSubList =
        json['idSubList'] == 'null' ? null : int.parse(json['idSubList']);
    idUser = int.parse(json['idUser']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.iId != null) {
      data['_id'] = this.iId!.toJson();
    }
    data['name'] = this.name;
    data['done'] = this.done;
    data['estTime'] = this.estTime;
    data['dueDate'] = this.dueDate;
    data['isRepeat'] = this.isRepeat;
    data['repeatString'] = this.repeatString;
    data['des'] = this.des;
    data['idItem'] = this.idItem;
    data['idList'] = this.idList;
    data['idSubList'] = this.idSubList;
    data['idUser'] = this.idUser;
    return data;
  }
}

class Id {
  String? oid;

  Id({this.oid});

  Id.fromJson(Map<String, dynamic> json) {
    oid = json['$oid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['$oid'] = this.oid;
    return data;
  }
}
