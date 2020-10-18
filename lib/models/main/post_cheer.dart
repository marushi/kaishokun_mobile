

import 'package:json_annotation/json_annotation.dart';
part 'post_cheer.g.dart';

@JsonSerializable()
class PostCheer {
  PostCheer();

  String trouble_id;
  String username;
  String twitter;
  String instagram;
  String content;

  factory PostCheer.fromJson(Map<String, dynamic> json) => _$PostCheerFromJson(json);
  Map<String, dynamic> toJson() => _$PostCheerToJson(this);
}
