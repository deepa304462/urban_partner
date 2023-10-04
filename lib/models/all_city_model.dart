/// _id : "64a026452fc1ec10b789c08a"
/// selectcity : "india"
/// __v : 0

class AllCityModel {
  AllCityModel({
      String? id, 
      String? selectcity, 
      num? v,}){
    _id = id;
    _selectcity = selectcity;
    _v = v;
}

  AllCityModel.fromJson(dynamic json) {
    _id = json['_id'];
    _selectcity = json['selectcity'];
    _v = json['__v'];
  }
  String? _id;
  String? _selectcity;
  num? _v;
AllCityModel copyWith({  String? id,
  String? selectcity,
  num? v,
}) => AllCityModel(  id: id ?? _id,
  selectcity: selectcity ?? _selectcity,
  v: v ?? _v,
);
  String? get id => _id;
  String? get selectcity => _selectcity;
  num? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['selectcity'] = _selectcity;
    map['__v'] = _v;
    return map;
  }

}