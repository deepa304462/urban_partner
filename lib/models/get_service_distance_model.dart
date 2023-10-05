/// msg : [{"_id":"649fcf5a07299cebf062a585","value":"3","type":"km","__v":0},{"_id":"649fcf6207299cebf062a587","value":"2","type":"km","__v":0},{"_id":"649fcf6607299cebf062a589","value":"3","type":"km","__v":0}]

class GetServiceDistanceModel {
  GetServiceDistanceModel({
      List<Msg>? msg,}){
    _msg = msg;
}

  GetServiceDistanceModel.fromJson(dynamic json) {
    if (json['msg'] != null) {
      _msg = [];
      json['msg'].forEach((v) {
        _msg?.add(Msg.fromJson(v));
      });
    }
  }
  List<Msg>? _msg;
GetServiceDistanceModel copyWith({  List<Msg>? msg,
}) => GetServiceDistanceModel(  msg: msg ?? _msg,
);
  List<Msg>? get msg => _msg;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_msg != null) {
      map['msg'] = _msg?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// _id : "649fcf5a07299cebf062a585"
/// value : "3"
/// type : "km"
/// __v : 0

class Msg {
  Msg({
      String? id, 
      String? value, 
      String? type, 
      num? v,}){
    _id = id;
    _value = value;
    _type = type;
    _v = v;
}

  Msg.fromJson(dynamic json) {
    _id = json['_id'];
    _value = json['value'];
    _type = json['type'];
    _v = json['__v'];
  }
  String? _id;
  String? _value;
  String? _type;
  num? _v;
Msg copyWith({  String? id,
  String? value,
  String? type,
  num? v,
}) => Msg(  id: id ?? _id,
  value: value ?? _value,
  type: type ?? _type,
  v: v ?? _v,
);
  String? get id => _id;
  String? get value => _value;
  String? get type => _type;
  num? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['value'] = _value;
    map['type'] = _type;
    map['__v'] = _v;
    return map;
  }

}