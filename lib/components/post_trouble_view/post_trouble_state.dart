import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_trouble_state.freezed.dart';
part 'post_trouble_state.g.dart';

@freezed
abstract class PostTroubleState with _$PostTroubleState {
  const factory PostTroubleState({
    @Default(0) int count,
    @Default("") String name,
  }) = _PostTroubleState;
  factory PostTroubleState.fromJson(Map<String, dynamic> json) => _$PostTroubleStateFromJson(json);
}