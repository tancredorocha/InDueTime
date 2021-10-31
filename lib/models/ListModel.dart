class Lists {
  Id? iId;
  String? name;
  String? category;
  int? isSubList;
  int? idList;
  int? idUser;

  Lists(
      {this.iId,
      this.name,
      this.category,
      this.isSubList,
      this.idList,
      this.idUser});

  Lists.fromJson(Map<String, dynamic> json) {
    iId = json['_id'] != null ? new Id.fromJson(json['_id']) : null;
    name = json['name'];
    category = json['category'];
    isSubList = int.parse(json['isSubList']);
    idList = int.parse(json['idList']);
    idUser = int.parse(json['idUser']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.iId != null) {
      data['_id'] = this.iId!.toJson();
    }
    data['name'] = this.name;
    data['category'] = this.category;
    data['isSubList'] = this.isSubList;
    data['idList'] = this.idList;
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
