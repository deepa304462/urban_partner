/// success : true
/// count : 1
/// data : [{"address":{"timeSlot":"0","daySlot":"0","street1":"galino3","street2":"sector 59","city":"noida","state":"delhi","country":"india"},"_id":"65018d4819dec94700f38095","userId":"64afef39721b42c441bfd18e","quantity":10,"cGst":100,"sGst":50,"total":3000,"paidAmount":0,"timeSlot":"0","daySlot":"0","categoryId":"649561bffafe7bde2fe8562c","subCategoryId":"64956a5aa1022b7390973c91","subsubCategoryId":"64a3b740b0482e6fa75dc3f1","serviceId":{"_id":"64a3c2abe8105c2df22b788e","name":"ac gas charging","categoryId":"649561bffafe7bde2fe8562c","subCategoryId":"64956a5aa1022b7390973c91","subsubCategoryId":"64a3b740b0482e6fa75dc3f1","vendorId":"649ec47dd7ecd578b7dfc8f5","status":"Active","price":300,"count":0,"__v":0},"servicePrice":300,"quantityService":1,"totalService":0,"paidAmountService":0,"courierWithBag":false,"notificationRecipent":false,"parcelValue":0,"orderStatus":"confirmed","returnStatus":"","paymentStatus":"paid","orderType":"Other","preparingStatus":"New","deliveryStatus":"","acceptOrRejected":"accept","startTime":"","endTime":"","otp":null,"accountVerification":false,"createdAt":"2023-09-13T10:22:00.976Z","updatedAt":"2023-09-13T13:58:42.583Z","__v":0}]

class OnGoingServiceModel {
  OnGoingServiceModel({
      bool? success, 
      num? count, 
      List<Data>? data,}){
    _success = success;
    _count = count;
    _data = data;
}

  OnGoingServiceModel.fromJson(dynamic json) {
    _success = json['success'];
    _count = json['count'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }
  bool? _success;
  num? _count;
  List<Data>? _data;
OnGoingServiceModel copyWith({  bool? success,
  num? count,
  List<Data>? data,
}) => OnGoingServiceModel(  success: success ?? _success,
  count: count ?? _count,
  data: data ?? _data,
);
  bool? get success => _success;
  num? get count => _count;
  List<Data>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    map['count'] = _count;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// address : {"timeSlot":"0","daySlot":"0","street1":"galino3","street2":"sector 59","city":"noida","state":"delhi","country":"india"}
/// _id : "65018d4819dec94700f38095"
/// userId : "64afef39721b42c441bfd18e"
/// quantity : 10
/// cGst : 100
/// sGst : 50
/// total : 3000
/// paidAmount : 0
/// timeSlot : "0"
/// daySlot : "0"
/// categoryId : "649561bffafe7bde2fe8562c"
/// subCategoryId : "64956a5aa1022b7390973c91"
/// subsubCategoryId : "64a3b740b0482e6fa75dc3f1"
/// serviceId : {"_id":"64a3c2abe8105c2df22b788e","name":"ac gas charging","categoryId":"649561bffafe7bde2fe8562c","subCategoryId":"64956a5aa1022b7390973c91","subsubCategoryId":"64a3b740b0482e6fa75dc3f1","vendorId":"649ec47dd7ecd578b7dfc8f5","status":"Active","price":300,"count":0,"__v":0}
/// servicePrice : 300
/// quantityService : 1
/// totalService : 0
/// paidAmountService : 0
/// courierWithBag : false
/// notificationRecipent : false
/// parcelValue : 0
/// orderStatus : "confirmed"
/// returnStatus : ""
/// paymentStatus : "paid"
/// orderType : "Other"
/// preparingStatus : "New"
/// deliveryStatus : ""
/// acceptOrRejected : "accept"
/// startTime : ""
/// endTime : ""
/// otp : null
/// accountVerification : false
/// createdAt : "2023-09-13T10:22:00.976Z"
/// updatedAt : "2023-09-13T13:58:42.583Z"
/// __v : 0

class Data {
  Data({
      Address? address, 
      String? id, 
      String? userId, 
      num? quantity, 
      num? cGst, 
      num? sGst, 
      num? total, 
      num? paidAmount, 
      String? timeSlot, 
      String? daySlot, 
      String? categoryId, 
      String? subCategoryId, 
      String? subsubCategoryId, 
      ServiceId? serviceId, 
      num? servicePrice, 
      num? quantityService, 
      num? totalService, 
      num? paidAmountService, 
      bool? courierWithBag, 
      bool? notificationRecipent, 
      num? parcelValue, 
      String? orderStatus, 
      String? returnStatus, 
      String? paymentStatus, 
      String? orderType, 
      String? preparingStatus, 
      String? deliveryStatus, 
      String? acceptOrRejected, 
      String? startTime, 
      String? endTime, 
      dynamic otp, 
      bool? accountVerification, 
      String? createdAt, 
      String? updatedAt, 
      num? v,}){
    _address = address;
    _id = id;
    _userId = userId;
    _quantity = quantity;
    _cGst = cGst;
    _sGst = sGst;
    _total = total;
    _paidAmount = paidAmount;
    _timeSlot = timeSlot;
    _daySlot = daySlot;
    _categoryId = categoryId;
    _subCategoryId = subCategoryId;
    _subsubCategoryId = subsubCategoryId;
    _serviceId = serviceId;
    _servicePrice = servicePrice;
    _quantityService = quantityService;
    _totalService = totalService;
    _paidAmountService = paidAmountService;
    _courierWithBag = courierWithBag;
    _notificationRecipent = notificationRecipent;
    _parcelValue = parcelValue;
    _orderStatus = orderStatus;
    _returnStatus = returnStatus;
    _paymentStatus = paymentStatus;
    _orderType = orderType;
    _preparingStatus = preparingStatus;
    _deliveryStatus = deliveryStatus;
    _acceptOrRejected = acceptOrRejected;
    _startTime = startTime;
    _endTime = endTime;
    _otp = otp;
    _accountVerification = accountVerification;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _v = v;
}

  Data.fromJson(dynamic json) {
    _address = json['address'] != null ? Address.fromJson(json['address']) : null;
    _id = json['_id'];
    _userId = json['userId'];
    _quantity = json['quantity'];
    _cGst = json['cGst'];
    _sGst = json['sGst'];
    _total = json['total'];
    _paidAmount = json['paidAmount'];
    _timeSlot = json['timeSlot'];
    _daySlot = json['daySlot'];
    _categoryId = json['categoryId'];
    _subCategoryId = json['subCategoryId'];
    _subsubCategoryId = json['subsubCategoryId'];
    _serviceId = json['serviceId'] != null ? ServiceId.fromJson(json['serviceId']) : null;
    _servicePrice = json['servicePrice'];
    _quantityService = json['quantityService'];
    _totalService = json['totalService'];
    _paidAmountService = json['paidAmountService'];
    _courierWithBag = json['courierWithBag'];
    _notificationRecipent = json['notificationRecipent'];
    _parcelValue = json['parcelValue'];
    _orderStatus = json['orderStatus'];
    _returnStatus = json['returnStatus'];
    _paymentStatus = json['paymentStatus'];
    _orderType = json['orderType'];
    _preparingStatus = json['preparingStatus'];
    _deliveryStatus = json['deliveryStatus'];
    _acceptOrRejected = json['acceptOrRejected'];
    _startTime = json['startTime'];
    _endTime = json['endTime'];
    _otp = json['otp'];
    _accountVerification = json['accountVerification'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _v = json['__v'];
  }
  Address? _address;
  String? _id;
  String? _userId;
  num? _quantity;
  num? _cGst;
  num? _sGst;
  num? _total;
  num? _paidAmount;
  String? _timeSlot;
  String? _daySlot;
  String? _categoryId;
  String? _subCategoryId;
  String? _subsubCategoryId;
  ServiceId? _serviceId;
  num? _servicePrice;
  num? _quantityService;
  num? _totalService;
  num? _paidAmountService;
  bool? _courierWithBag;
  bool? _notificationRecipent;
  num? _parcelValue;
  String? _orderStatus;
  String? _returnStatus;
  String? _paymentStatus;
  String? _orderType;
  String? _preparingStatus;
  String? _deliveryStatus;
  String? _acceptOrRejected;
  String? _startTime;
  String? _endTime;
  dynamic _otp;
  bool? _accountVerification;
  String? _createdAt;
  String? _updatedAt;
  num? _v;
Data copyWith({  Address? address,
  String? id,
  String? userId,
  num? quantity,
  num? cGst,
  num? sGst,
  num? total,
  num? paidAmount,
  String? timeSlot,
  String? daySlot,
  String? categoryId,
  String? subCategoryId,
  String? subsubCategoryId,
  ServiceId? serviceId,
  num? servicePrice,
  num? quantityService,
  num? totalService,
  num? paidAmountService,
  bool? courierWithBag,
  bool? notificationRecipent,
  num? parcelValue,
  String? orderStatus,
  String? returnStatus,
  String? paymentStatus,
  String? orderType,
  String? preparingStatus,
  String? deliveryStatus,
  String? acceptOrRejected,
  String? startTime,
  String? endTime,
  dynamic otp,
  bool? accountVerification,
  String? createdAt,
  String? updatedAt,
  num? v,
}) => Data(  address: address ?? _address,
  id: id ?? _id,
  userId: userId ?? _userId,
  quantity: quantity ?? _quantity,
  cGst: cGst ?? _cGst,
  sGst: sGst ?? _sGst,
  total: total ?? _total,
  paidAmount: paidAmount ?? _paidAmount,
  timeSlot: timeSlot ?? _timeSlot,
  daySlot: daySlot ?? _daySlot,
  categoryId: categoryId ?? _categoryId,
  subCategoryId: subCategoryId ?? _subCategoryId,
  subsubCategoryId: subsubCategoryId ?? _subsubCategoryId,
  serviceId: serviceId ?? _serviceId,
  servicePrice: servicePrice ?? _servicePrice,
  quantityService: quantityService ?? _quantityService,
  totalService: totalService ?? _totalService,
  paidAmountService: paidAmountService ?? _paidAmountService,
  courierWithBag: courierWithBag ?? _courierWithBag,
  notificationRecipent: notificationRecipent ?? _notificationRecipent,
  parcelValue: parcelValue ?? _parcelValue,
  orderStatus: orderStatus ?? _orderStatus,
  returnStatus: returnStatus ?? _returnStatus,
  paymentStatus: paymentStatus ?? _paymentStatus,
  orderType: orderType ?? _orderType,
  preparingStatus: preparingStatus ?? _preparingStatus,
  deliveryStatus: deliveryStatus ?? _deliveryStatus,
  acceptOrRejected: acceptOrRejected ?? _acceptOrRejected,
  startTime: startTime ?? _startTime,
  endTime: endTime ?? _endTime,
  otp: otp ?? _otp,
  accountVerification: accountVerification ?? _accountVerification,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  v: v ?? _v,
);
  Address? get address => _address;
  String? get id => _id;
  String? get userId => _userId;
  num? get quantity => _quantity;
  num? get cGst => _cGst;
  num? get sGst => _sGst;
  num? get total => _total;
  num? get paidAmount => _paidAmount;
  String? get timeSlot => _timeSlot;
  String? get daySlot => _daySlot;
  String? get categoryId => _categoryId;
  String? get subCategoryId => _subCategoryId;
  String? get subsubCategoryId => _subsubCategoryId;
  ServiceId? get serviceId => _serviceId;
  num? get servicePrice => _servicePrice;
  num? get quantityService => _quantityService;
  num? get totalService => _totalService;
  num? get paidAmountService => _paidAmountService;
  bool? get courierWithBag => _courierWithBag;
  bool? get notificationRecipent => _notificationRecipent;
  num? get parcelValue => _parcelValue;
  String? get orderStatus => _orderStatus;
  String? get returnStatus => _returnStatus;
  String? get paymentStatus => _paymentStatus;
  String? get orderType => _orderType;
  String? get preparingStatus => _preparingStatus;
  String? get deliveryStatus => _deliveryStatus;
  String? get acceptOrRejected => _acceptOrRejected;
  String? get startTime => _startTime;
  String? get endTime => _endTime;
  dynamic get otp => _otp;
  bool? get accountVerification => _accountVerification;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  num? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_address != null) {
      map['address'] = _address?.toJson();
    }
    map['_id'] = _id;
    map['userId'] = _userId;
    map['quantity'] = _quantity;
    map['cGst'] = _cGst;
    map['sGst'] = _sGst;
    map['total'] = _total;
    map['paidAmount'] = _paidAmount;
    map['timeSlot'] = _timeSlot;
    map['daySlot'] = _daySlot;
    map['categoryId'] = _categoryId;
    map['subCategoryId'] = _subCategoryId;
    map['subsubCategoryId'] = _subsubCategoryId;
    if (_serviceId != null) {
      map['serviceId'] = _serviceId?.toJson();
    }
    map['servicePrice'] = _servicePrice;
    map['quantityService'] = _quantityService;
    map['totalService'] = _totalService;
    map['paidAmountService'] = _paidAmountService;
    map['courierWithBag'] = _courierWithBag;
    map['notificationRecipent'] = _notificationRecipent;
    map['parcelValue'] = _parcelValue;
    map['orderStatus'] = _orderStatus;
    map['returnStatus'] = _returnStatus;
    map['paymentStatus'] = _paymentStatus;
    map['orderType'] = _orderType;
    map['preparingStatus'] = _preparingStatus;
    map['deliveryStatus'] = _deliveryStatus;
    map['acceptOrRejected'] = _acceptOrRejected;
    map['startTime'] = _startTime;
    map['endTime'] = _endTime;
    map['otp'] = _otp;
    map['accountVerification'] = _accountVerification;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['__v'] = _v;
    return map;
  }

}

/// _id : "64a3c2abe8105c2df22b788e"
/// name : "ac gas charging"
/// categoryId : "649561bffafe7bde2fe8562c"
/// subCategoryId : "64956a5aa1022b7390973c91"
/// subsubCategoryId : "64a3b740b0482e6fa75dc3f1"
/// vendorId : "649ec47dd7ecd578b7dfc8f5"
/// status : "Active"
/// price : 300
/// count : 0
/// __v : 0

class ServiceId {
  ServiceId({
      String? id, 
      String? name, 
      String? categoryId, 
      String? subCategoryId, 
      String? subsubCategoryId, 
      String? vendorId, 
      String? status, 
      num? price, 
      num? count, 
      num? v,}){
    _id = id;
    _name = name;
    _categoryId = categoryId;
    _subCategoryId = subCategoryId;
    _subsubCategoryId = subsubCategoryId;
    _vendorId = vendorId;
    _status = status;
    _price = price;
    _count = count;
    _v = v;
}

  ServiceId.fromJson(dynamic json) {
    _id = json['_id'];
    _name = json['name'];
    _categoryId = json['categoryId'];
    _subCategoryId = json['subCategoryId'];
    _subsubCategoryId = json['subsubCategoryId'];
    _vendorId = json['vendorId'];
    _status = json['status'];
    _price = json['price'];
    _count = json['count'];
    _v = json['__v'];
  }
  String? _id;
  String? _name;
  String? _categoryId;
  String? _subCategoryId;
  String? _subsubCategoryId;
  String? _vendorId;
  String? _status;
  num? _price;
  num? _count;
  num? _v;
ServiceId copyWith({  String? id,
  String? name,
  String? categoryId,
  String? subCategoryId,
  String? subsubCategoryId,
  String? vendorId,
  String? status,
  num? price,
  num? count,
  num? v,
}) => ServiceId(  id: id ?? _id,
  name: name ?? _name,
  categoryId: categoryId ?? _categoryId,
  subCategoryId: subCategoryId ?? _subCategoryId,
  subsubCategoryId: subsubCategoryId ?? _subsubCategoryId,
  vendorId: vendorId ?? _vendorId,
  status: status ?? _status,
  price: price ?? _price,
  count: count ?? _count,
  v: v ?? _v,
);
  String? get id => _id;
  String? get name => _name;
  String? get categoryId => _categoryId;
  String? get subCategoryId => _subCategoryId;
  String? get subsubCategoryId => _subsubCategoryId;
  String? get vendorId => _vendorId;
  String? get status => _status;
  num? get price => _price;
  num? get count => _count;
  num? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['name'] = _name;
    map['categoryId'] = _categoryId;
    map['subCategoryId'] = _subCategoryId;
    map['subsubCategoryId'] = _subsubCategoryId;
    map['vendorId'] = _vendorId;
    map['status'] = _status;
    map['price'] = _price;
    map['count'] = _count;
    map['__v'] = _v;
    return map;
  }

}

/// timeSlot : "0"
/// daySlot : "0"
/// street1 : "galino3"
/// street2 : "sector 59"
/// city : "noida"
/// state : "delhi"
/// country : "india"

class Address {
  Address({
      String? timeSlot, 
      String? daySlot, 
      String? street1, 
      String? street2, 
      String? city, 
      String? state, 
      String? country,}){
    _timeSlot = timeSlot;
    _daySlot = daySlot;
    _street1 = street1;
    _street2 = street2;
    _city = city;
    _state = state;
    _country = country;
}

  Address.fromJson(dynamic json) {
    _timeSlot = json['timeSlot'];
    _daySlot = json['daySlot'];
    _street1 = json['street1'];
    _street2 = json['street2'];
    _city = json['city'];
    _state = json['state'];
    _country = json['country'];
  }
  String? _timeSlot;
  String? _daySlot;
  String? _street1;
  String? _street2;
  String? _city;
  String? _state;
  String? _country;
Address copyWith({  String? timeSlot,
  String? daySlot,
  String? street1,
  String? street2,
  String? city,
  String? state,
  String? country,
}) => Address(  timeSlot: timeSlot ?? _timeSlot,
  daySlot: daySlot ?? _daySlot,
  street1: street1 ?? _street1,
  street2: street2 ?? _street2,
  city: city ?? _city,
  state: state ?? _state,
  country: country ?? _country,
);
  String? get timeSlot => _timeSlot;
  String? get daySlot => _daySlot;
  String? get street1 => _street1;
  String? get street2 => _street2;
  String? get city => _city;
  String? get state => _state;
  String? get country => _country;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['timeSlot'] = _timeSlot;
    map['daySlot'] = _daySlot;
    map['street1'] = _street1;
    map['street2'] = _street2;
    map['city'] = _city;
    map['state'] = _state;
    map['country'] = _country;
    return map;
  }

}