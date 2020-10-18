import 'package:json_annotation/json_annotation.dart';
part 'trouble.g.dart';

@JsonSerializable()
class Trouble {
  Trouble(this.id,this.title,this.trouble_level,this.username,this.content,this.posted_at);

  int id;
  int trouble_level;
  String username;
  String title;
  String content;
  DateTime posted_at;

  factory Trouble.fromJson(Map<String, dynamic> json) => _$TroubleFromJson(json);
  Map<String, dynamic> toJson() => _$TroubleToJson(this);
}
