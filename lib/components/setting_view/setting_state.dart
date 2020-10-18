import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_state.freezed.dart';

@freezed
abstract class SettingState with _$SettingState {

  const factory SettingState({
    @Default("") String penName,
    @Default("") String twitterId,
    @Default("") String instagramId,
  }) = _SettingState;

}