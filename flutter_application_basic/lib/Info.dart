import 'package:flutter/foundation.dart';

class Info {
  final String? name;
  final int? id;
  final int? money;
  Info({this.id, this.name, this.money});

  factory Info.fromJson(Map<dynamic, dynamic> json) {
    return Info(id: json['id'], name: json['name'], money: json['money']);
  }
}
