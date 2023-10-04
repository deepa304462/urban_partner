/// status : 200
/// message : "Registered successfully "
/// data : {"id":"651d2ddd102273ae1beb259a","otp":"2336","fullName":"rainy day","phone":"8855443321","email":"rainy1@gmail.com"}

class RegisterModel {
  RegisterModel({
      num? status, 
      String? message, 
      Data? data,}){
    _status = status;
    _message = message;
    _data = data;
}

  RegisterModel.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  num? _status;
  String? _message;
  Data? _data;
RegisterModel copyWith({  num? status,
  String? message,
  Data? data,
}) => RegisterModel(  status: status ?? _status,
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

/// id : "651d2ddd102273ae1beb259a"
/// otp : "2336"
/// fullName : "rainy day"
/// phone : "8855443321"
/// email : "rainy1@gmail.com"

class Data {
  Data({
      String? id, 
      String? otp, 
      String? fullName, 
      String? phone, 
      String? email,}){
    _id = id;
    _otp = otp;
    _fullName = fullName;
    _phone = phone;
    _email = email;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _otp = json['otp'];
    _fullName = json['fullName'];
    _phone = json['phone'];
    _email = json['email'];
  }
  String? _id;
  String? _otp;
  String? _fullName;
  String? _phone;
  String? _email;
Data copyWith({  String? id,
  String? otp,
  String? fullName,
  String? phone,
  String? email,
}) => Data(  id: id ?? _id,
  otp: otp ?? _otp,
  fullName: fullName ?? _fullName,
  phone: phone ?? _phone,
  email: email ?? _email,
);
  String? get id => _id;
  String? get otp => _otp;
  String? get fullName => _fullName;
  String? get phone => _phone;
  String? get email => _email;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['otp'] = _otp;
    map['fullName'] = _fullName;
    map['phone'] = _phone;
    map['email'] = _email;
    return map;
  }

}