

import 'package:json_annotation/json_annotation.dart';
part 'cheer.g.dart';

@JsonSerializable()
class Cheer {
  Cheer();

  int id;
  int trouble_id;
  String username;
  String twitter;
  String instagram;
  String content;
  DateTime posted_at;
  bool read;

  factory Cheer.fromJson(Map<String, dynamic> json) => _$CheerFromJson(json);
  Map<String, dynamic> toJson() => _$CheerToJson(this);
}
