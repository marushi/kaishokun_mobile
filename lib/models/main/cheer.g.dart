// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cheer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cheer _$CheerFromJson(Map<String, dynamic> json) {
  return Cheer()
    ..id = json['id'] as int
    ..trouble_id = json['trouble_id'] as int
    ..username = json['username'] as String
    ..twitter = json['twitter'] as String
    ..instagram = json['instagram'] as String
    ..content = json['content'] as String
    ..posted_at = json['posted_at'] == null
        ? null
        : DateTime.parse(json['posted_at'] as String)
    ..read = json['read'] as bool;
}

Map<String, dynamic> _$CheerToJson(Cheer instance) => <String, dynamic>{
      'id': instance.id,
      'trouble_id': instance.trouble_id,
      'username': instance.username,
      'twitter': instance.twitter,
      'instagram': instance.instagram,
      'content': instance.content,
      'posted_at': instance.posted_at?.toIso8601String(),
      'read': instance.read,
    };
