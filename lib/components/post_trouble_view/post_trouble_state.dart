import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_trouble_state.freezed.dart';

@freezed
abstract class PostTroubleState with _$PostTroubleState {

  const factory PostTroubleState({
    @Default(0) int troubleLevel,
  }) = _PostTroubleState;

}