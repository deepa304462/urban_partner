/// data : {"name":"faiz","email":"qwe","mobile":"1234","altMobile":"String","pncode":"String","state":"String","city":"String","house":"String","landmark":"String","street":"noida","country":"india","_id":"65210f1fc3c44b0bd44647c1","__v":0}
/// message : " addressData Added "

class CreateAddressModel {
  CreateAddressModel({
      Data? data, 
      String? message,}){
    _data = data;
    _message = message;
}

  CreateAddressModel.fromJson(dynamic json) {
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _message = json['message'];
  }
  Data? _data;
  String? _message;
CreateAddressModel copyWith({  Data? data,
  String? message,
}) => CreateAddressModel(  data: data ?? _data,
  message: message ?? _message,
);
  Data? get data => _data;
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    map['message'] = _message;
    return map;
  }

}

/// name : "faiz"
/// email : "qwe"
/// mobile : "1234"
/// altMobile : "String"
/// pncode : "String"
/// state : "String"
/// city : "String"
/// house : "String"
/// landmark : "String"
/// street : "noida"
/// country : "india"
/// _id : "65210f1fc3c44b0bd44647c1"
/// __v : 0

class Data {
  Data({
      String? name, 
      String? email, 
      String? mobile, 
      String? altMobile, 
      String? pncode, 
      String? state, 
      String? city, 
      String? house, 
      String? landmark, 
      String? street, 
      String? country, 
      String? id, 
      num? v,}){
    _name = name;
    _email = email;
    _mobile = mobile;
    _altMobile = altMobile;
    _pncode = pncode;
    _state = state;
    _city = city;
    _house = house;
    _landmark = landmark;
    _street = street;
    _country = country;
    _id = id;
    _v = v;
}

  Data.fromJson(dynamic json) {
    _name = json['name'];
    _email = json['email'];
    _mobile = json['mobile'];
    _altMobile = json['altMobile'];
    _pncode = json['pncode'];
    _state = json['state'];
    _city = json['city'];
    _house = json['house'];
    _landmark = json['landmark'];
    _street = json['street'];
    _country = json['country'];
    _id = json['_id'];
    _v = json['__v'];
  }
  String? _name;
  String? _email;
  String? _mobile;
  String? _altMobile;
  String? _pncode;
  String? _state;
  String? _city;
  String? _house;
  String? _landmark;
  String? _street;
  String? _country;
  String? _id;
  num? _v;
Data copyWith({  String? name,
  String? email,
  String? mobile,
  String? altMobile,
  String? pncode,
  String? state,
  String? city,
  String? house,
  String? landmark,
  String? street,
  String? country,
  String? id,
  num? v,
}) => Data(  name: name ?? _name,
  email: email ?? _email,
  mobile: mobile ?? _mobile,
  altMobile: altMobile ?? _altMobile,
  pncode: pncode ?? _pncode,
  state: state ?? _state,
  city: city ?? _city,
  house: house ?? _house,
  landmark: landmark ?? _landmark,
  street: street ?? _street,
  country: country ?? _country,
  id: id ?? _id,
  v: v ?? _v,
);
  String? get name => _name;
  String? get email => _email;
  String? get mobile => _mobile;
  String? get altMobile => _altMobile;
  String? get pncode => _pncode;
  String? get state => _state;
  String? get city => _city;
  String? get house => _house;
  String? get landmark => _landmark;
  String? get street => _street;
  String? get country => _country;
  String? get id => _id;
  num? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['email'] = _email;
    map['mobile'] = _mobile;
    map['altMobile'] = _altMobile;
    map['pncode'] = _pncode;
    map['state'] = _state;
    map['city'] = _city;
    map['house'] = _house;
    map['landmark'] = _landmark;
    map['street'] = _street;
    map['country'] = _country;
    map['_id'] = _id;
    map['__v'] = _v;
    return map;
  }

}