/// status : 200
/// message : "get Profile"
/// data : {"currentLocation":{"type":"Point","coordinates":[0,0]},"_id":"652119121d416b4dad1d225a","typeOfProducts":[],"fullName":"flywe","phone":"4556734567","email":"flywe@gmail.com","address":"noida sector 59","otp":"3558","otpExpiration":"2023-10-07T08:43:42.391Z","accountVerification":true,"userType":"VENDOR","wallet":0,"lead":0,"BankName":"","BranchName":"","AccountNumber":"","confirmAccountNumber":"","ifscCode":"","referalCodeUnique":"","referalCode":"","referalData":[],"Coin":0,"subscriptionVerification":false,"helpers":[],"createdAt":"2023-10-07T08:38:42.397Z","updatedAt":"2023-10-07T09:36:17.748Z","__v":0,"pincode":123456,"serviceArea":"649edfa78e5622c1ea01644f","serviceDistance":"649fcf6207299cebf062a587","serviceName":"64c4e63147cf557474c0e60c","aadharCard":"123456789012","backSide":"https://res.cloudinary.com/dbrvq9uxa/image/upload/v1696668289/images/image/fo6xlzh8plngygmxfyso.jpg","frontSide":"https://res.cloudinary.com/dbrvq9uxa/image/upload/v1696668290/images/image/noqfcwfbeopxnapqsesn.jpg","uploadPanCard":"https://res.cloudinary.com/dbrvq9uxa/image/upload/v1696668290/images/image/dgosf2oqnn0cgkgj6vct.jpg","uploadSelfie":"https://res.cloudinary.com/dbrvq9uxa/image/upload/v1696668290/images/image/rkpnnnhhiejfkvnkwbob.jpg"}

class GetProfileModel {
  GetProfileModel({
      num? status, 
      String? message, 
      Data? data,}){
    _status = status;
    _message = message;
    _data = data;
}

  GetProfileModel.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  num? _status;
  String? _message;
  Data? _data;
GetProfileModel copyWith({  num? status,
  String? message,
  Data? data,
}) => GetProfileModel(  status: status ?? _status,
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

/// currentLocation : {"type":"Point","coordinates":[0,0]}
/// _id : "652119121d416b4dad1d225a"
/// typeOfProducts : []
/// fullName : "flywe"
/// phone : "4556734567"
/// email : "flywe@gmail.com"
/// address : "noida sector 59"
/// otp : "3558"
/// otpExpiration : "2023-10-07T08:43:42.391Z"
/// accountVerification : true
/// userType : "VENDOR"
/// wallet : 0
/// lead : 0
/// BankName : ""
/// BranchName : ""
/// AccountNumber : ""
/// confirmAccountNumber : ""
/// ifscCode : ""
/// referalCodeUnique : ""
/// referalCode : ""
/// referalData : []
/// Coin : 0
/// subscriptionVerification : false
/// helpers : []
/// createdAt : "2023-10-07T08:38:42.397Z"
/// updatedAt : "2023-10-07T09:36:17.748Z"
/// __v : 0
/// pincode : 123456
/// serviceArea : "649edfa78e5622c1ea01644f"
/// serviceDistance : "649fcf6207299cebf062a587"
/// serviceName : "64c4e63147cf557474c0e60c"
/// aadharCard : "123456789012"
/// backSide : "https://res.cloudinary.com/dbrvq9uxa/image/upload/v1696668289/images/image/fo6xlzh8plngygmxfyso.jpg"
/// frontSide : "https://res.cloudinary.com/dbrvq9uxa/image/upload/v1696668290/images/image/noqfcwfbeopxnapqsesn.jpg"
/// uploadPanCard : "https://res.cloudinary.com/dbrvq9uxa/image/upload/v1696668290/images/image/dgosf2oqnn0cgkgj6vct.jpg"
/// uploadSelfie : "https://res.cloudinary.com/dbrvq9uxa/image/upload/v1696668290/images/image/rkpnnnhhiejfkvnkwbob.jpg"

class Data {
  Data({
      CurrentLocation? currentLocation, 
      String? id, 
      List<dynamic>? typeOfProducts, 
      String? fullName, 
      String? phone, 
      String? email, 
      String? address, 
      String? otp, 
      String? otpExpiration, 
      bool? accountVerification, 
      String? userType, 
      num? wallet, 
      num? lead, 
      String? bankName, 
      String? branchName, 
      String? accountNumber, 
      String? confirmAccountNumber, 
      String? ifscCode, 
      String? referalCodeUnique, 
      String? referalCode, 
      List<dynamic>? referalData, 
      num? coin, 
      bool? subscriptionVerification, 
      List<dynamic>? helpers, 
      String? createdAt, 
      String? updatedAt, 
      num? v, 
      num? pincode, 
      String? serviceArea, 
      String? serviceDistance, 
      String? serviceName, 
      String? aadharCard, 
      String? backSide, 
      String? frontSide, 
      String? uploadPanCard, 
      String? uploadSelfie,}){
    _currentLocation = currentLocation;
    _id = id;
    _typeOfProducts = typeOfProducts;
    _fullName = fullName;
    _phone = phone;
    _email = email;
    _address = address;
    _otp = otp;
    _otpExpiration = otpExpiration;
    _accountVerification = accountVerification;
    _userType = userType;
    _wallet = wallet;
    _lead = lead;
    _bankName = bankName;
    _branchName = branchName;
    _accountNumber = accountNumber;
    _confirmAccountNumber = confirmAccountNumber;
    _ifscCode = ifscCode;
    _referalCodeUnique = referalCodeUnique;
    _referalCode = referalCode;
    _referalData = referalData;
    _coin = coin;
    _subscriptionVerification = subscriptionVerification;
    _helpers = helpers;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _v = v;
    _pincode = pincode;
    _serviceArea = serviceArea;
    _serviceDistance = serviceDistance;
    _serviceName = serviceName;
    _aadharCard = aadharCard;
    _backSide = backSide;
    _frontSide = frontSide;
    _uploadPanCard = uploadPanCard;
    _uploadSelfie = uploadSelfie;
}

  Data.fromJson(dynamic json) {
    _currentLocation = json['currentLocation'] != null ? CurrentLocation.fromJson(json['currentLocation']) : null;
    _id = json['_id'];
    _fullName = json['fullName'];
    _phone = json['phone'];
    _email = json['email'];
    _address = json['address'];
    _otp = json['otp'];
    _otpExpiration = json['otpExpiration'];
    _accountVerification = json['accountVerification'];
    _userType = json['userType'];
    _wallet = json['wallet'];
    _lead = json['lead'];
    _bankName = json['BankName'];
    _branchName = json['BranchName'];
    _accountNumber = json['AccountNumber'];
    _confirmAccountNumber = json['confirmAccountNumber'];
    _ifscCode = json['ifscCode'];
    _referalCodeUnique = json['referalCodeUnique'];
    _referalCode = json['referalCode'];
    _coin = json['Coin'];
    _subscriptionVerification = json['subscriptionVerification'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _v = json['__v'];
    _pincode = json['pincode'];
    _serviceArea = json['serviceArea'];
    _serviceDistance = json['serviceDistance'];
    _serviceName = json['serviceName'];
    _aadharCard = json['aadharCard'];
    _backSide = json['backSide'];
    _frontSide = json['frontSide'];
    _uploadPanCard = json['uploadPanCard'];
    _uploadSelfie = json['uploadSelfie'];
  }
  CurrentLocation? _currentLocation;
  String? _id;
  List<dynamic>? _typeOfProducts;
  String? _fullName;
  String? _phone;
  String? _email;
  String? _address;
  String? _otp;
  String? _otpExpiration;
  bool? _accountVerification;
  String? _userType;
  num? _wallet;
  num? _lead;
  String? _bankName;
  String? _branchName;
  String? _accountNumber;
  String? _confirmAccountNumber;
  String? _ifscCode;
  String? _referalCodeUnique;
  String? _referalCode;
  List<dynamic>? _referalData;
  num? _coin;
  bool? _subscriptionVerification;
  List<dynamic>? _helpers;
  String? _createdAt;
  String? _updatedAt;
  num? _v;
  num? _pincode;
  String? _serviceArea;
  String? _serviceDistance;
  String? _serviceName;
  String? _aadharCard;
  String? _backSide;
  String? _frontSide;
  String? _uploadPanCard;
  String? _uploadSelfie;
Data copyWith({  CurrentLocation? currentLocation,
  String? id,
  List<dynamic>? typeOfProducts,
  String? fullName,
  String? phone,
  String? email,
  String? address,
  String? otp,
  String? otpExpiration,
  bool? accountVerification,
  String? userType,
  num? wallet,
  num? lead,
  String? bankName,
  String? branchName,
  String? accountNumber,
  String? confirmAccountNumber,
  String? ifscCode,
  String? referalCodeUnique,
  String? referalCode,
  List<dynamic>? referalData,
  num? coin,
  bool? subscriptionVerification,
  List<dynamic>? helpers,
  String? createdAt,
  String? updatedAt,
  num? v,
  num? pincode,
  String? serviceArea,
  String? serviceDistance,
  String? serviceName,
  String? aadharCard,
  String? backSide,
  String? frontSide,
  String? uploadPanCard,
  String? uploadSelfie,
}) => Data(  currentLocation: currentLocation ?? _currentLocation,
  id: id ?? _id,
  typeOfProducts: typeOfProducts ?? _typeOfProducts,
  fullName: fullName ?? _fullName,
  phone: phone ?? _phone,
  email: email ?? _email,
  address: address ?? _address,
  otp: otp ?? _otp,
  otpExpiration: otpExpiration ?? _otpExpiration,
  accountVerification: accountVerification ?? _accountVerification,
  userType: userType ?? _userType,
  wallet: wallet ?? _wallet,
  lead: lead ?? _lead,
  bankName: bankName ?? _bankName,
  branchName: branchName ?? _branchName,
  accountNumber: accountNumber ?? _accountNumber,
  confirmAccountNumber: confirmAccountNumber ?? _confirmAccountNumber,
  ifscCode: ifscCode ?? _ifscCode,
  referalCodeUnique: referalCodeUnique ?? _referalCodeUnique,
  referalCode: referalCode ?? _referalCode,
  referalData: referalData ?? _referalData,
  coin: coin ?? _coin,
  subscriptionVerification: subscriptionVerification ?? _subscriptionVerification,
  helpers: helpers ?? _helpers,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  v: v ?? _v,
  pincode: pincode ?? _pincode,
  serviceArea: serviceArea ?? _serviceArea,
  serviceDistance: serviceDistance ?? _serviceDistance,
  serviceName: serviceName ?? _serviceName,
  aadharCard: aadharCard ?? _aadharCard,
  backSide: backSide ?? _backSide,
  frontSide: frontSide ?? _frontSide,
  uploadPanCard: uploadPanCard ?? _uploadPanCard,
  uploadSelfie: uploadSelfie ?? _uploadSelfie,
);
  CurrentLocation? get currentLocation => _currentLocation;
  String? get id => _id;
  List<dynamic>? get typeOfProducts => _typeOfProducts;
  String? get fullName => _fullName;
  String? get phone => _phone;
  String? get email => _email;
  String? get address => _address;
  String? get otp => _otp;
  String? get otpExpiration => _otpExpiration;
  bool? get accountVerification => _accountVerification;
  String? get userType => _userType;
  num? get wallet => _wallet;
  num? get lead => _lead;
  String? get bankName => _bankName;
  String? get branchName => _branchName;
  String? get accountNumber => _accountNumber;
  String? get confirmAccountNumber => _confirmAccountNumber;
  String? get ifscCode => _ifscCode;
  String? get referalCodeUnique => _referalCodeUnique;
  String? get referalCode => _referalCode;
  List<dynamic>? get referalData => _referalData;
  num? get coin => _coin;
  bool? get subscriptionVerification => _subscriptionVerification;
  List<dynamic>? get helpers => _helpers;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  num? get v => _v;
  num? get pincode => _pincode;
  String? get serviceArea => _serviceArea;
  String? get serviceDistance => _serviceDistance;
  String? get serviceName => _serviceName;
  String? get aadharCard => _aadharCard;
  String? get backSide => _backSide;
  String? get frontSide => _frontSide;
  String? get uploadPanCard => _uploadPanCard;
  String? get uploadSelfie => _uploadSelfie;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_currentLocation != null) {
      map['currentLocation'] = _currentLocation?.toJson();
    }
    map['_id'] = _id;
    if (_typeOfProducts != null) {
      map['typeOfProducts'] = _typeOfProducts?.map((v) => v.toJson()).toList();
    }
    map['fullName'] = _fullName;
    map['phone'] = _phone;
    map['email'] = _email;
    map['address'] = _address;
    map['otp'] = _otp;
    map['otpExpiration'] = _otpExpiration;
    map['accountVerification'] = _accountVerification;
    map['userType'] = _userType;
    map['wallet'] = _wallet;
    map['lead'] = _lead;
    map['BankName'] = _bankName;
    map['BranchName'] = _branchName;
    map['AccountNumber'] = _accountNumber;
    map['confirmAccountNumber'] = _confirmAccountNumber;
    map['ifscCode'] = _ifscCode;
    map['referalCodeUnique'] = _referalCodeUnique;
    map['referalCode'] = _referalCode;
    if (_referalData != null) {
      map['referalData'] = _referalData?.map((v) => v.toJson()).toList();
    }
    map['Coin'] = _coin;
    map['subscriptionVerification'] = _subscriptionVerification;
    if (_helpers != null) {
      map['helpers'] = _helpers?.map((v) => v.toJson()).toList();
    }
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['__v'] = _v;
    map['pincode'] = _pincode;
    map['serviceArea'] = _serviceArea;
    map['serviceDistance'] = _serviceDistance;
    map['serviceName'] = _serviceName;
    map['aadharCard'] = _aadharCard;
    map['backSide'] = _backSide;
    map['frontSide'] = _frontSide;
    map['uploadPanCard'] = _uploadPanCard;
    map['uploadSelfie'] = _uploadSelfie;
    return map;
  }

}

/// type : "Point"
/// coordinates : [0,0]

class CurrentLocation {
  CurrentLocation({
      String? type, 
      List<num>? coordinates,}){
    _type = type;
    _coordinates = coordinates;
}

  CurrentLocation.fromJson(dynamic json) {
    _type = json['type'];
    _coordinates = json['coordinates'] != null ? json['coordinates'].cast<num>() : [];
  }
  String? _type;
  List<num>? _coordinates;
CurrentLocation copyWith({  String? type,
  List<num>? coordinates,
}) => CurrentLocation(  type: type ?? _type,
  coordinates: coordinates ?? _coordinates,
);
  String? get type => _type;
  List<num>? get coordinates => _coordinates;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = _type;
    map['coordinates'] = _coordinates;
    return map;
  }

}