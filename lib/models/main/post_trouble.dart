import 'package:json_annotation/json_annotation.dart';
part 'post_trouble.g.dart';

@JsonSerializable()
class PostTrouble {
  PostTrouble();

  String trouble_level;
  String username;
  String title;
  String content;
  String uuid;

  factory PostTrouble.fromJson(Map<String, dynamic> json) => _$PostTroubleFromJson(json);
  Map<String, dynamic> toJson() => _$PostTroubleToJson(this);
}
