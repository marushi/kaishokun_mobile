import 'package:freezed_annotation/freezed_annotation.dart';

part 'cheer_single_state.freezed.dart';

@freezed
abstract class CheerSingleState with _$CheerSingleState {

  const factory CheerSingleState({
    @Default(0) int count,
    @Default("") String name,
  }) = _CheerSingleState;

}