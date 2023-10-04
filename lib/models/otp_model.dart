/// status : 200
/// message : "logged in successfully"
/// data : {"id":"651d3d9248fac39e4660acfb","otp":"1440","phone":"1111111111","accessToken":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1MWQzZDkyNDhmYWMzOWU0NjYwYWNmYiIsImlhdCI6MTY5NjQxNTEzNiwiZXhwIjoxNjk2Njc0MzM2fQ.VETbUYXBBCmNKR-nJBgHJPTMiUT1e09eTmkQAgtIBCU"}

class OtpModel {
  OtpModel({
      num? status, 
      String? message, 
      Data? data,}){
    _status = status;
    _message = message;
    _data = data;
}

  OtpModel.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  num? _status;
  String? _message;
  Data? _data;
OtpModel copyWith({  num? status,
  String? message,
  Data? data,
}) => OtpModel(  status: status ?? _status,
  message: message ?? _message,
  data: data ?? _data,
);
  num? get status => _status;
  String? get message => _message;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// id : "651d3d9248fac39e4660acfb"
/// otp : "1440"
/// phone : "1111111111"
/// accessToken : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1MWQzZDkyNDhmYWMzOWU0NjYwYWNmYiIsImlhdCI6MTY5NjQxNTEzNiwiZXhwIjoxNjk2Njc0MzM2fQ.VETbUYXBBCmNKR-nJBgHJPTMiUT1e09eTmkQAgtIBCU"

class Data {
  Data({
      String? id, 
      String? otp, 
      String? phone, 
      String? accessToken,}){
    _id = id;
    _otp = otp;
    _phone = phone;
    _accessToken = accessToken;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _otp = json['otp'];
    _phone = json['phone'];
    _accessToken = json['accessToken'];
  }
  String? _id;
  String? _otp;
  String? _phone;
  String? _accessToken;
Data copyWith({  String? id,
  String? otp,
  String? phone,
  String? accessToken,
}) => Data(  id: id ?? _id,
  otp: otp ?? _otp,
  phone: phone ?? _phone,
  accessToken: accessToken ?? _accessToken,
);
  String? get id => _id;
  String? get otp => _otp;
  String? get phone => _phone;
  String? get accessToken => _accessToken;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['otp'] = _otp;
    map['phone'] = _phone;
    map['accessToken'] = _accessToken;
    return map;
  }

}