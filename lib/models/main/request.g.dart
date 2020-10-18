// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Request _$RequestFromJson(Map<String, dynamic> json) {
  return Request()
    ..uuid = json['uuid'] as String
    ..page = json['page'] as String
    ..count = json['count'] as String;
}

Map<String, dynamic> _$RequestToJson(Request instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'page': instance.page,
      'count': instance.count,
    };
