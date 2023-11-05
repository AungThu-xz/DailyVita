/// data : [{"id":1,"name":"Milk"},{"id":2,"name":"Meat"},{"id":3,"name":"Weat"},{"id":4,"name":"Nasacort"},{"id":5,"name":"Nasalide"},{"id":6,"name":"Nasaonex"}]

class Allergies {
  Allergies({
    List<Data> data,
  }) {
    _data = data;
  }

  Allergies.fromJson(dynamic json) {
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data.add(Data.fromJson(v));
      });
    }
  }
  List<Data> _data;
  Allergies copyWith({
    List<Data> data,
  }) =>
      Allergies(
        data: data ?? _data,
      );
  List<Data> get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 1
/// name : "Milk"

class Data {
  Data({
    num id,
    String name,
  }) {
    _id = id;
    _name = name;
  }

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
  }
  num _id;
  String _name;
  Data copyWith({
    num id,
    String name,
  }) =>
      Data(
        id: id ?? _id,
        name: name ?? _name,
      );
  num get id => _id;
  String get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    return map;
  }
}
