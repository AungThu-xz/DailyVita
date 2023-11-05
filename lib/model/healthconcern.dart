/// data : [{"id":1,"name":"Sleep"},{"id":2,"name":"Immunity"},{"id":3,"name":"Stress"},{"id":4,"name":"Joint Support"},{"id":5,"name":"Digestion"},{"id":6,"name":"Mood"},{"id":7,"name":"Energy"},{"id":8,"name":"Hair, Nail, Skin"},{"id":9,"name":"Weight Loss"},{"id":10,"name":"Fitness"}]

class Healthconcern {
  Healthconcern({
    List<Data> data,
  }) {
    _data = data;
  }

  Healthconcern.fromJson(dynamic json) {
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data.add(Data.fromJson(v));
      });
    }
  }
  List<Data> _data;
  Healthconcern copyWith({
    List<Data> data,
  }) =>
      Healthconcern(
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
/// name : "Sleep"

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
