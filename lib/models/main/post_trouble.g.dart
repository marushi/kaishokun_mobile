// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_trouble.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostTrouble _$PostTroubleFromJson(Map<String, dynamic> json) {
  return PostTrouble()
    ..trouble_level = json['trouble_level'] as String
    ..username = json['username'] as String
    ..title = json['title'] as String
    ..content = json['content'] as String
    ..uuid = json['uuid'] as String;
}

Map<String, dynamic> _$PostTroubleToJson(PostTrouble instance) =>
    <String, dynamic>{
      'trouble_level': instance.trouble_level,
      'username': instance.username,
      'title': instance.title,
      'content': instance.content,
      'uuid': instance.uuid,
    };
