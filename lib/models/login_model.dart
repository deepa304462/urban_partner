/// status : 200
/// message : "logged in successfully"
/// data : {"id":"651c0a63e0e6b7551c811bd1","otp":"6367","phone":"8855443322","fullName":"rainy day","email":"rainy@gmail.com"}

class LoginModel {
  LoginModel({
      num? status, 
      String? message, 
      Data? data,}){
    _status = status;
    _message = message;
    _data = data;
}

  LoginModel.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  num? _status;
  String? _message;
  Data? _data;
LoginModel copyWith({  num? status,
  String? message,
  Data? data,
}) => LoginModel(  status: status ?? _status,
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

/// id : "651c0a63e0e6b7551c811bd1"
/// otp : "6367"
/// phone : "8855443322"
/// fullName : "rainy day"
/// email : "rainy@gmail.com"

class Data {
  Data({
      String? id, 
      String? otp, 
      String? phone, 
      String? fullName, 
      String? email,}){
    _id = id;
    _otp = otp;
    _phone = phone;
    _fullName = fullName;
    _email = email;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _otp = json['otp'];
    _phone = json['phone'];
    _fullName = json['fullName'];
    _email = json['email'];
  }
  String? _id;
  String? _otp;
  String? _phone;
  String? _fullName;
  String? _email;
Data copyWith({  String? id,
  String? otp,
  String? phone,
  String? fullName,
  String? email,
}) => Data(  id: id ?? _id,
  otp: otp ?? _otp,
  phone: phone ?? _phone,
  fullName: fullName ?? _fullName,
  email: email ?? _email,
);
  String? get id => _id;
  String? get otp => _otp;
  String? get phone => _phone;
  String? get fullName => _fullName;
  String? get email => _email;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['otp'] = _otp;
    map['phone'] = _phone;
    map['fullName'] = _fullName;
    map['email'] = _email;
    return map;
  }

}