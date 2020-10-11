import 'package:freezed_annotation/freezed_annotation.dart';

part 'trouble_single_state.freezed.dart';
part 'trouble_single_state.g.dart';

@freezed
abstract class TroubleSingleState with _$TroubleSingleState {
  const factory TroubleSingleState({
    @Default(0) int count,
    @Default("") String name,
  }) = _TroubleSingleState;
  factory TroubleSingleState.fromJson(Map<String, dynamic> json) => _$TroubleSingleStateFromJson(json);
}