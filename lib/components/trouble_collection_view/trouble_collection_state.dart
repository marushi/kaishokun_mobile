import 'package:freezed_annotation/freezed_annotation.dart';

part 'trouble_collection_state.freezed.dart';
part 'trouble_collection_state.g.dart';

@freezed
abstract class TroubleCollectionState with _$TroubleCollectionState {
  const factory TroubleCollectionState({
    @Default(0) int count,
    @Default("") String name,
  }) = _TroubleCollectionState;
  factory TroubleCollectionState.fromJson(Map<String, dynamic> json) => _$TroubleCollectionStateFromJson(json);
}