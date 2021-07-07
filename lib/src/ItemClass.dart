
class Item {
  Id _iId;
  String _name;
  String _done;
  String _estTime;
  String _dueDate;
  String _isRepeat;
  String _repeatString;
  String _des;
  String _idItem;
  String _idList;
  String _idSubList;
  String _idUser;

  Item(
      {Id iId,
      String name,
      String done,
      String estTime,
      String dueDate,
      String isRepeat,
      String repeatString,
      String des,
      String idItem,
      String idList,
      String idSubList,
      String idUser}) {
    this._iId = iId;
    this._name = name;
    this._done = done;
    this._estTime = estTime;
    this._dueDate = dueDate;
    this._isRepeat = isRepeat;
    this._repeatString = repeatString;
    this._des = des;
    this._idItem = idItem;
    this._idList = idList;
    this._idSubList = idSubList;
    this._idUser = idUser;
  }
  /*
  Id get iId => _iId;
  set iId(Id iId) => _iId = iId;
  String get name => _name;
  set name(String name) => _name = name;
  String get done => _done;
  set done(String done) => _done = done;
  String get estTime => _estTime;
  set estTime(String estTime) => _estTime = estTime;
  String get dueDate => _dueDate;
  set dueDate(String dueDate) => _dueDate = dueDate;
  String get isRepeat => _isRepeat;
  set isRepeat(String isRepeat) => _isRepeat = isRepeat;
  String get repeatString => _repeatString;
  set repeatString(String repeatString) => _repeatString = repeatString;
  String get des => _des;
  set des(String des) => _des = des;
  String get idItem => _idItem;
  set idItem(String idItem) => _idItem = idItem;
  String get idList => _idList;
  set idList(String idList) => _idList = idList;
  String get idSubList => _idSubList;
  set idSubList(String idSubList) => _idSubList = idSubList;
  String get idUser => _idUser;
  set idUser(String idUser) => _idUser = idUser;
  */
  String get name => _name;
  //set name(String name) => _name = name;


  Item.fromJson(Map<String, dynamic> json) {
    _iId = json['_id'] != null ? new Id.fromJson(json['_id']) : null;
    _name = json['name'];
    _done = json['done'];
    _estTime = json['estTime'];
    _dueDate = json['dueDate'];
    _isRepeat = json['isRepeat'];
    _repeatString = json['repeatString'];
    _des = json['des'];
    _idItem = json['idItem'];
    _idList = json['idList'];
    _idSubList = json['idSubList'];
    _idUser = json['idUser'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._iId != null) {
      data['_id'] = this._iId.toJson();
    }
    data['name'] = this._name;
    data['done'] = this._done;
    data['estTime'] = this._estTime;
    data['dueDate'] = this._dueDate;
    data['isRepeat'] = this._isRepeat;
    data['repeatString'] = this._repeatString;
    data['des'] = this._des;
    data['idItem'] = this._idItem;
    data['idList'] = this._idList;
    data['idSubList'] = this._idSubList;
    data['idUser'] = this._idUser;
    return data;
  }
}

class Id {
  String _oid;

  Id({String oid}) {
    this._oid = oid;
  }

  String get oid => _oid;
  set oid(String oid) => _oid = oid;

  Id.fromJson(Map<String, dynamic> json) {
    _oid = json['$oid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['$oid'] = this._oid;
    return data;
  }
}
