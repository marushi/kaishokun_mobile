// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_cheer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostCheer _$PostCheerFromJson(Map<String, dynamic> json) {
  return PostCheer()
    ..trouble_id = json['trouble_id'] as String
    ..username = json['username'] as String
    ..twitter = json['twitter'] as String
    ..instagram = json['instagram'] as String
    ..content = json['content'] as String;
}

Map<String, dynamic> _$PostCheerToJson(PostCheer instance) => <String, dynamic>{
      'trouble_id': instance.trouble_id,
      'username': instance.username,
      'twitter': instance.twitter,
      'instagram': instance.instagram,
      'content': instance.content,
    };
