/// status : 200
/// message : "OTP resent"
/// data : {"id":"64954057feb2e21de6da1ca1","otp":"0038","phone":"4556734567"}

class ResendOtpModel {
  ResendOtpModel({
      num? status, 
      String? message, 
      Data? data,}){
    _status = status;
    _message = message;
    _data = data;
}

  ResendOtpModel.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  num? _status;
  String? _message;
  Data? _data;
ResendOtpModel copyWith({  num? status,
  String? message,
  Data? data,
}) => ResendOtpModel(  status: status ?? _status,
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

/// id : "64954057feb2e21de6da1ca1"
/// otp : "0038"
/// phone : "4556734567"

class Data {
  Data({
      String? id, 
      String? otp, 
      String? phone,}){
    _id = id;
    _otp = otp;
    _phone = phone;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _otp = json['otp'];
    _phone = json['phone'];
  }
  String? _id;
  String? _otp;
  String? _phone;
Data copyWith({  String? id,
  String? otp,
  String? phone,
}) => Data(  id: id ?? _id,
  otp: otp ?? _otp,
  phone: phone ?? _phone,
);
  String? get id => _id;
  String? get otp => _otp;
  String? get phone => _phone;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['otp'] = _otp;
    map['phone'] = _phone;
    return map;
  }

}