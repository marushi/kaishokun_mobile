import 'package:freezed_annotation/freezed_annotation.dart';

part 'cheer_collection_state.freezed.dart';
part 'cheer_collection_state.g.dart';

@freezed
abstract class CheerCollectionState with _$CheerCollectionState {
  const factory CheerCollectionState({
    @Default(0) int count,
    @Default("") String name,
  }) = _CheerCollectionState;
  factory CheerCollectionState.fromJson(Map<String, dynamic> json) => _$CheerCollectionStateFromJson(json);
}