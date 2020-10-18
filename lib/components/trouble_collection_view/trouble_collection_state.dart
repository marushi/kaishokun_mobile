
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kaishokunmobile/models/main/trouble.dart';

part 'trouble_collection_state.freezed.dart';

@freezed
abstract class TroubleCollectionState with _$TroubleCollectionState {
  const factory TroubleCollectionState({
    @Default([]) List<Trouble> troubles,
  }) = _TroubleCollectionState;
}