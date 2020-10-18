import 'package:freezed_annotation/freezed_annotation.dart';

part 'developer_state.freezed.dart';
@freezed
abstract class DeveloperState with _$DeveloperState {
  const factory DeveloperState({
    @Default(0) int count,
    @Default("") String name,
  }) = _DeveloperState;

}