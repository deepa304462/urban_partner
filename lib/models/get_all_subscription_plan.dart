/// msg : [{"_id":"64a2af503c00d8e1e9575013","planName":"Silver","amount":2000,"data":["subscription","field"],"__v":0}]

class GetAllSubscriptionPlan {
  GetAllSubscriptionPlan({
      List<Msg>? msg,}){
    _msg = msg;
}

  GetAllSubscriptionPlan.fromJson(dynamic json) {
    if (json['msg'] != null) {
      _msg = [];
      json['msg'].forEach((v) {
        _msg?.add(Msg.fromJson(v));
      });
    }
  }
  List<Msg>? _msg;
GetAllSubscriptionPlan copyWith({  List<Msg>? msg,
}) => GetAllSubscriptionPlan(  msg: msg ?? _msg,
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

/// _id : "64a2af503c00d8e1e9575013"
/// planName : "Silver"
/// amount : 2000
/// data : ["subscription","field"]
/// __v : 0

class Msg {
  Msg({
      String? id, 
      String? planName, 
      num? amount, 
      List<String>? data, 
      num? v,}){
    _id = id;
    _planName = planName;
    _amount = amount;
    _data = data;
    _v = v;
}

  Msg.fromJson(dynamic json) {
    _id = json['_id'];
    _planName = json['planName'];
    _amount = json['amount'];
    _data = json['data'] != null ? json['data'].cast<String>() : [];
    _v = json['__v'];
  }
  String? _id;
  String? _planName;
  num? _amount;
  List<String>? _data;
  num? _v;
Msg copyWith({  String? id,
  String? planName,
  num? amount,
  List<String>? data,
  num? v,
}) => Msg(  id: id ?? _id,
  planName: planName ?? _planName,
  amount: amount ?? _amount,
  data: data ?? _data,
  v: v ?? _v,
);
  String? get id => _id;
  String? get planName => _planName;
  num? get amount => _amount;
  List<String>? get data => _data;
  num? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['planName'] = _planName;
    map['amount'] = _amount;
    map['data'] = _data;
    map['__v'] = _v;
    return map;
  }

}