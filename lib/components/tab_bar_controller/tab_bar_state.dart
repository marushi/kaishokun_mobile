import 'package:freezed_annotation/freezed_annotation.dart';

part 'tab_bar_state.freezed.dart';
part 'tab_bar_state.g.dart';

@freezed
abstract class TabBarState with _$TabBarState {
  const factory TabBarState({
    @Default(0) int count,
    @Default("") String name,
  }) = _TabBarState;
  factory TabBarState.fromJson(Map<String, dynamic> json) => _$TabBarStateFromJson(json);
}