// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trouble.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Trouble _$TroubleFromJson(Map<String, dynamic> json) {
  return Trouble(
    json['id'] as int,
    json['title'] as String,
    json['trouble_level'] as int,
    json['username'] as String,
    json['content'] as String,
    json['posted_at'] == null
        ? null
        : DateTime.parse(json['posted_at'] as String),
  );
}

Map<String, dynamic> _$TroubleToJson(Trouble instance) => <String, dynamic>{
      'id': instance.id,
      'trouble_level': instance.trouble_level,
      'username': instance.username,
      'title': instance.title,
      'content': instance.content,
      'posted_at': instance.posted_at?.toIso8601String(),
    };
