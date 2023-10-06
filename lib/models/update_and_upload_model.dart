/// msg : "profile updated successfully"
/// user : {"currentLocation":{"type":"Point","coordinates":[84.456,78.24354]},"_id":"649ec47dd7ecd578b7dfc8f5","fullName":"flyweis","phone":"8855443377","email":"fly@gmail.com","otp":"2227","otpExpiration":"2023-09-13T10:04:21.198Z","accountVerification":true,"userType":"VENDOR","wallet":0,"createdAt":"2023-06-30T12:03:09.184Z","updatedAt":"2023-10-06T06:25:08.480Z","__v":2,"aadharCard":"123456789012","pancard":"23536457111","uploadPanCard":"https://res.cloudinary.com/dbrvq9uxa/image/upload/v1696573507/images/image/pejq6tsakimgtmberpx9.jpg","uploadSelfie":"https://res.cloudinary.com/dbrvq9uxa/image/upload/v1696573507/images/image/zny8j0y7hm6igtnyzme8.jpg","backSide":"https://res.cloudinary.com/dbrvq9uxa/image/upload/v1696573507/images/image/atznenraqcofpzbk5ig0.jpg","frontSide":"https://res.cloudinary.com/dbrvq9uxa/image/upload/v1696573507/images/image/zg002pgv1xz4mma3daxq.jpg","AccountNumber":"12345678910","BankName":"mybank","BranchName":"mybranch","Coin":0,"address":"","confirmAccountNumber":"12345678910","helpers":[null,"new helper"],"ifscCode":"123MY456","lead":0,"referalCode":"","referalCodeUnique":"","referalData":[],"subscriptionVerification":false,"typeOfProducts":[],"city":"64a026452fc1ec10b789c08e","pincode":121005,"serviceArea":"649edfa38e5622c1ea01644a","serviceDistance":"649fcf5a07299cebf062a586","serviceName":"64a3c2abe8105c2df22b788a"}

class UpdateAndUploadModel {
  UpdateAndUploadModel({
      String? msg, 
      User? user,}){
    _msg = msg;
    _user = user;
}

  UpdateAndUploadModel.fromJson(dynamic json) {
    _msg = json['msg'];
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  String? _msg;
  User? _user;
UpdateAndUploadModel copyWith({  String? msg,
  User? user,
}) => UpdateAndUploadModel(  msg: msg ?? _msg,
  user: user ?? _user,
);
  String? get msg => _msg;
  User? get user => _user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['msg'] = _msg;
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    return map;
  }

}

/// currentLocation : {"type":"Point","coordinates":[84.456,78.24354]}
/// _id : "649ec47dd7ecd578b7dfc8f5"
/// fullName : "flyweis"
/// phone : "8855443377"
/// email : "fly@gmail.com"
/// otp : "2227"
/// otpExpiration : "2023-09-13T10:04:21.198Z"
/// accountVerification : true
/// userType : "VENDOR"
/// wallet : 0
/// createdAt : "2023-06-30T12:03:09.184Z"
/// updatedAt : "2023-10-06T06:25:08.480Z"
/// __v : 2
/// aadharCard : "123456789012"
/// pancard : "23536457111"
/// uploadPanCard : "https://res.cloudinary.com/dbrvq9uxa/image/upload/v1696573507/images/image/pejq6tsakimgtmberpx9.jpg"
/// uploadSelfie : "https://res.cloudinary.com/dbrvq9uxa/image/upload/v1696573507/images/image/zny8j0y7hm6igtnyzme8.jpg"
/// backSide : "https://res.cloudinary.com/dbrvq9uxa/image/upload/v1696573507/images/image/atznenraqcofpzbk5ig0.jpg"
/// frontSide : "https://res.cloudinary.com/dbrvq9uxa/image/upload/v1696573507/images/image/zg002pgv1xz4mma3daxq.jpg"
/// AccountNumber : "12345678910"
/// BankName : "mybank"
/// BranchName : "mybranch"
/// Coin : 0
/// address : ""
/// confirmAccountNumber : "12345678910"
/// helpers : [null,"new helper"]
/// ifscCode : "123MY456"
/// lead : 0
/// referalCode : ""
/// referalCodeUnique : ""
/// referalData : []
/// subscriptionVerification : false
/// typeOfProducts : []
/// city : "64a026452fc1ec10b789c08e"
/// pincode : 121005
/// serviceArea : "649edfa38e5622c1ea01644a"
/// serviceDistance : "649fcf5a07299cebf062a586"
/// serviceName : "64a3c2abe8105c2df22b788a"

class User {
  User({
      CurrentLocation? currentLocation, 
      String? id, 
      String? fullName, 
      String? phone, 
      String? email, 
      String? otp, 
      String? otpExpiration, 
      bool? accountVerification, 
      String? userType, 
      num? wallet, 
      String? createdAt, 
      String? updatedAt, 
      num? v, 
      String? aadharCard, 
      String? pancard, 
      String? uploadPanCard, 
      String? uploadSelfie, 
      String? backSide, 
      String? frontSide, 
      String? accountNumber, 
      String? bankName, 
      String? branchName, 
      num? coin, 
      String? address, 
      String? confirmAccountNumber, 
      List<dynamic>? helpers, 
      String? ifscCode, 
      num? lead, 
      String? referalCode, 
      String? referalCodeUnique, 
      List<dynamic>? referalData, 
      bool? subscriptionVerification, 
      List<dynamic>? typeOfProducts, 
      String? city, 
      num? pincode, 
      String? serviceArea, 
      String? serviceDistance, 
      String? serviceName,}){
    _currentLocation = currentLocation;
    _id = id;
    _fullName = fullName;
    _phone = phone;
    _email = email;
    _otp = otp;
    _otpExpiration = otpExpiration;
    _accountVerification = accountVerification;
    _userType = userType;
    _wallet = wallet;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _v = v;
    _aadharCard = aadharCard;
    _pancard = pancard;
    _uploadPanCard = uploadPanCard;
    _uploadSelfie = uploadSelfie;
    _backSide = backSide;
    _frontSide = frontSide;
    _accountNumber = accountNumber;
    _bankName = bankName;
    _branchName = branchName;
    _coin = coin;
    _address = address;
    _confirmAccountNumber = confirmAccountNumber;
    _ifscCode = ifscCode;
    _lead = lead;
    _referalCode = referalCode;
    _referalCodeUnique = referalCodeUnique;
    _referalData = referalData;
    _subscriptionVerification = subscriptionVerification;
    _typeOfProducts = typeOfProducts;
    _city = city;
    _pincode = pincode;
    _serviceArea = serviceArea;
    _serviceDistance = serviceDistance;
    _serviceName = serviceName;
}

  User.fromJson(dynamic json) {
    _currentLocation = json['currentLocation'] != null ? CurrentLocation.fromJson(json['currentLocation']) : null;
    _id = json['_id'];
    _fullName = json['fullName'];
    _phone = json['phone'];
    _email = json['email'];
    _otp = json['otp'];
    _otpExpiration = json['otpExpiration'];
    _accountVerification = json['accountVerification'];
    _userType = json['userType'];
    _wallet = json['wallet'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _v = json['__v'];
    _aadharCard = json['aadharCard'];
    _pancard = json['pancard'];
    _uploadPanCard = json['uploadPanCard'];
    _uploadSelfie = json['uploadSelfie'];
    _backSide = json['backSide'];
    _frontSide = json['frontSide'];
    _accountNumber = json['AccountNumber'];
    _bankName = json['BankName'];
    _branchName = json['BranchName'];
    _coin = json['Coin'];
    _address = json['address'];
    _confirmAccountNumber = json['confirmAccountNumber'];
    _ifscCode = json['ifscCode'];
    _lead = json['lead'];
    _referalCode = json['referalCode'];
    _referalCodeUnique = json['referalCodeUnique'];
    _subscriptionVerification = json['subscriptionVerification'];

    _city = json['city'];
    _pincode = json['pincode'];
    _serviceArea = json['serviceArea'];
    _serviceDistance = json['serviceDistance'];
    _serviceName = json['serviceName'];
  }
  CurrentLocation? _currentLocation;
  String? _id;
  String? _fullName;
  String? _phone;
  String? _email;
  String? _otp;
  String? _otpExpiration;
  bool? _accountVerification;
  String? _userType;
  num? _wallet;
  String? _createdAt;
  String? _updatedAt;
  num? _v;
  String? _aadharCard;
  String? _pancard;
  String? _uploadPanCard;
  String? _uploadSelfie;
  String? _backSide;
  String? _frontSide;
  String? _accountNumber;
  String? _bankName;
  String? _branchName;
  num? _coin;
  String? _address;
  String? _confirmAccountNumber;
  String? _ifscCode;
  num? _lead;
  String? _referalCode;
  String? _referalCodeUnique;
  List<dynamic>? _referalData;
  bool? _subscriptionVerification;
  List<dynamic>? _typeOfProducts;
  String? _city;
  num? _pincode;
  String? _serviceArea;
  String? _serviceDistance;
  String? _serviceName;
User copyWith({  CurrentLocation? currentLocation,
  String? id,
  String? fullName,
  String? phone,
  String? email,
  String? otp,
  String? otpExpiration,
  bool? accountVerification,
  String? userType,
  num? wallet,
  String? createdAt,
  String? updatedAt,
  num? v,
  String? aadharCard,
  String? pancard,
  String? uploadPanCard,
  String? uploadSelfie,
  String? backSide,
  String? frontSide,
  String? accountNumber,
  String? bankName,
  String? branchName,
  num? coin,
  String? address,
  String? confirmAccountNumber,
  List<dynamic>? helpers,
  String? ifscCode,
  num? lead,
  String? referalCode,
  String? referalCodeUnique,
  List<dynamic>? referalData,
  bool? subscriptionVerification,
  List<dynamic>? typeOfProducts,
  String? city,
  num? pincode,
  String? serviceArea,
  String? serviceDistance,
  String? serviceName,
}) => User(  currentLocation: currentLocation ?? _currentLocation,
  id: id ?? _id,
  fullName: fullName ?? _fullName,
  phone: phone ?? _phone,
  email: email ?? _email,
  otp: otp ?? _otp,
  otpExpiration: otpExpiration ?? _otpExpiration,
  accountVerification: accountVerification ?? _accountVerification,
  userType: userType ?? _userType,
  wallet: wallet ?? _wallet,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  v: v ?? _v,
  aadharCard: aadharCard ?? _aadharCard,
  pancard: pancard ?? _pancard,
  uploadPanCard: uploadPanCard ?? _uploadPanCard,
  uploadSelfie: uploadSelfie ?? _uploadSelfie,
  backSide: backSide ?? _backSide,
  frontSide: frontSide ?? _frontSide,
  accountNumber: accountNumber ?? _accountNumber,
  bankName: bankName ?? _bankName,
  branchName: branchName ?? _branchName,
  coin: coin ?? _coin,
  address: address ?? _address,
  confirmAccountNumber: confirmAccountNumber ?? _confirmAccountNumber,
  ifscCode: ifscCode ?? _ifscCode,
  lead: lead ?? _lead,
  referalCode: referalCode ?? _referalCode,
  referalCodeUnique: referalCodeUnique ?? _referalCodeUnique,
  referalData: referalData ?? _referalData,
  subscriptionVerification: subscriptionVerification ?? _subscriptionVerification,
  typeOfProducts: typeOfProducts ?? _typeOfProducts,
  city: city ?? _city,
  pincode: pincode ?? _pincode,
  serviceArea: serviceArea ?? _serviceArea,
  serviceDistance: serviceDistance ?? _serviceDistance,
  serviceName: serviceName ?? _serviceName,
);
  CurrentLocation? get currentLocation => _currentLocation;
  String? get id => _id;
  String? get fullName => _fullName;
  String? get phone => _phone;
  String? get email => _email;
  String? get otp => _otp;
  String? get otpExpiration => _otpExpiration;
  bool? get accountVerification => _accountVerification;
  String? get userType => _userType;
  num? get wallet => _wallet;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  num? get v => _v;
  String? get aadharCard => _aadharCard;
  String? get pancard => _pancard;
  String? get uploadPanCard => _uploadPanCard;
  String? get uploadSelfie => _uploadSelfie;
  String? get backSide => _backSide;
  String? get frontSide => _frontSide;
  String? get accountNumber => _accountNumber;
  String? get bankName => _bankName;
  String? get branchName => _branchName;
  num? get coin => _coin;
  String? get address => _address;
  String? get confirmAccountNumber => _confirmAccountNumber;
  String? get ifscCode => _ifscCode;
  num? get lead => _lead;
  String? get referalCode => _referalCode;
  String? get referalCodeUnique => _referalCodeUnique;
  List<dynamic>? get referalData => _referalData;
  bool? get subscriptionVerification => _subscriptionVerification;
  List<dynamic>? get typeOfProducts => _typeOfProducts;
  String? get city => _city;
  num? get pincode => _pincode;
  String? get serviceArea => _serviceArea;
  String? get serviceDistance => _serviceDistance;
  String? get serviceName => _serviceName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_currentLocation != null) {
      map['currentLocation'] = _currentLocation?.toJson();
    }
    map['_id'] = _id;
    map['fullName'] = _fullName;
    map['phone'] = _phone;
    map['email'] = _email;
    map['otp'] = _otp;
    map['otpExpiration'] = _otpExpiration;
    map['accountVerification'] = _accountVerification;
    map['userType'] = _userType;
    map['wallet'] = _wallet;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['__v'] = _v;
    map['aadharCard'] = _aadharCard;
    map['pancard'] = _pancard;
    map['uploadPanCard'] = _uploadPanCard;
    map['uploadSelfie'] = _uploadSelfie;
    map['backSide'] = _backSide;
    map['frontSide'] = _frontSide;
    map['AccountNumber'] = _accountNumber;
    map['BankName'] = _bankName;
    map['BranchName'] = _branchName;
    map['Coin'] = _coin;
    map['address'] = _address;
    map['confirmAccountNumber'] = _confirmAccountNumber;
    map['ifscCode'] = _ifscCode;
    map['lead'] = _lead;
    map['referalCode'] = _referalCode;
    map['referalCodeUnique'] = _referalCodeUnique;
    if (_referalData != null) {
      map['referalData'] = _referalData?.map((v) => v.toJson()).toList();
    }
    map['subscriptionVerification'] = _subscriptionVerification;
    if (_typeOfProducts != null) {
      map['typeOfProducts'] = _typeOfProducts?.map((v) => v.toJson()).toList();
    }
    map['city'] = _city;
    map['pincode'] = _pincode;
    map['serviceArea'] = _serviceArea;
    map['serviceDistance'] = _serviceDistance;
    map['serviceName'] = _serviceName;
    return map;
  }

}

/// type : "Point"
/// coordinates : [84.456,78.24354]

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