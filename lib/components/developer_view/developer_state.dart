import 'package:freezed_annotation/freezed_annotation.dart';

part 'developer_state.freezed.dart';
part 'developer_state.g.dart';

@freezed
abstract class DeveloperState with _$DeveloperState {
  const factory DeveloperState({
    @Default(0) int count,
    @Default("") String name,
  }) = _DeveloperState;
  factory DeveloperState.fromJson(Map<String, dynamic> json) => _$DeveloperStateFromJson(json);
}