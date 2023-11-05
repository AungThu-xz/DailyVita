/// data : [{"id":1,"name":"Vegan","tool_tip":"Lorem Ipsum is simply dummy text of the printing and typesetting industry."},{"id":2,"name":"Vegaterian","tool_tip":"Lorem Ipsum is simply dummy text of the printing and typesetting industry."},{"id":3,"name":"Plant based","tool_tip":"Lorem Ipsum is simply dummy text of the printing and typesetting industry."},{"id":4,"name":"Pescaterian","tool_tip":"Lorem Ipsum is simply dummy text of the printing and typesetting industry."},{"id":5,"name":"Strict Paleo","tool_tip":"Lorem Ipsum is simply dummy text of the printing and typesetting industry."},{"id":6,"name":"Ketogenic","tool_tip":"Lorem Ipsum is simply dummy text of the printing and typesetting industry."}]

class Diets {
  Diets({
    List<Data> data,
  }) {
    _data = data;
  }

  Diets.fromJson(dynamic json) {
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data.add(Data.fromJson(v));
      });
    }
  }
  List<Data> _data;
  Diets copyWith({
    List<Data> data,
  }) =>
      Diets(
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
/// name : "Vegan"
/// tool_tip : "Lorem Ipsum is simply dummy text of the printing and typesetting industry."

class Data {
  Data({
    num id,
    String name,
    String toolTip,
  }) {
    _id = id;
    _name = name;
    _toolTip = toolTip;
  }

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _toolTip = json['tool_tip'];
  }
  num _id;
  String _name;
  String _toolTip;
  Data copyWith({
    num id,
    String name,
    String toolTip,
  }) =>
      Data(
        id: id ?? _id,
        name: name ?? _name,
        toolTip: toolTip ?? _toolTip,
      );
  num get id => _id;
  String get name => _name;
  String get toolTip => _toolTip;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['tool_tip'] = _toolTip;
    return map;
  }
}
