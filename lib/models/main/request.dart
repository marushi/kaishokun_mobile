
import 'package:json_annotation/json_annotation.dart';
part 'request.g.dart';

@JsonSerializable()
class Request {
  Request();

  String uuid;
  String page;
  String count;

  factory Request.fromJson(Map<String, dynamic> json) => _$RequestFromJson(json);
  Map<String, dynamic> toJson() => _$RequestToJson(this);
}

