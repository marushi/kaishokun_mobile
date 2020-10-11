import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_state.freezed.dart';
part 'menu_state.g.dart';

@freezed
abstract class MenuState with _$MenuState {
  const factory MenuState({
    @Default(0) int count,
    @Default("") String name,
  }) = _MenuState;
  factory MenuState.fromJson(Map<String, dynamic> json) => _$MenuStateFromJson(json);
}