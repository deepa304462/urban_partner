/// msg : [{"_id":"64a3c2abe8105c2df22b788e","name":"ac gas charging"}]

class GetAllServicesModel {
  GetAllServicesModel({
      List<Msg>? msg,}){
    _msg = msg;
}

  GetAllServicesModel.fromJson(dynamic json) {
    if (json['msg'] != null) {
      _msg = [];
      json['msg'].forEach((v) {
        _msg?.add(Msg.fromJson(v));
      });
    }
  }
  List<Msg>? _msg;
GetAllServicesModel copyWith({  List<Msg>? msg,
}) => GetAllServicesModel(  msg: msg ?? _msg,
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

/// _id : "64a3c2abe8105c2df22b788e"
/// name : "ac gas charging"

class Msg {
  Msg({
      String? id, 
      String? name,}){
    _id = id;
    _name = name;
}

  Msg.fromJson(dynamic json) {
    _id = json['_id'];
    _name = json['name'];
  }
  String? _id;
  String? _name;
Msg copyWith({  String? id,
  String? name,
}) => Msg(  id: id ?? _id,
  name: name ?? _name,
);
  String? get id => _id;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['name'] = _name;
    return map;
  }

}