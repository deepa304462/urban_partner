/// msg : [{"_id":"649edfa38e5622c1ea01644d","name":"area3","__v":0},{"_id":"649edfa78e5622c1ea01644f","name":"area2","__v":0},{"_id":"649edfac8e5622c1ea016451","name":"area3","__v":0},{"_id":"64a003642e4758da7a2f545d","name":"geyser","__v":0},{"_id":"64a003732e4758da7a2f545f","name":"geyser","__v":0},{"_id":"64a0038a2e4758da7a2f5461","name":"geyser","__v":0}]

class GetServiceAreaModel {
  GetServiceAreaModel({
      List<Msg>? msg,}){
    _msg = msg;
}

  GetServiceAreaModel.fromJson(dynamic json) {
    if (json['msg'] != null) {
      _msg = [];
      json['msg'].forEach((v) {
        _msg?.add(Msg.fromJson(v));
      });
    }
  }
  List<Msg>? _msg;
GetServiceAreaModel copyWith({  List<Msg>? msg,
}) => GetServiceAreaModel(  msg: msg ?? _msg,
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

/// _id : "649edfa38e5622c1ea01644d"
/// name : "area3"
/// __v : 0

class Msg {
  Msg({
      String? id, 
      String? name, 
      num? v,}){
    _id = id;
    _name = name;
    _v = v;
}

  Msg.fromJson(dynamic json) {
    _id = json['_id'];
    _name = json['name'];
    _v = json['__v'];
  }
  String? _id;
  String? _name;
  num? _v;
Msg copyWith({  String? id,
  String? name,
  num? v,
}) => Msg(  id: id ?? _id,
  name: name ?? _name,
  v: v ?? _v,
);
  String? get id => _id;
  String? get name => _name;
  num? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['name'] = _name;
    map['__v'] = _v;
    return map;
  }

}