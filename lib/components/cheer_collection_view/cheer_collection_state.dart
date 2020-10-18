import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kaishokunmobile/models/main/cheer.dart';

part 'cheer_collection_state.freezed.dart';

@freezed
abstract class CheerCollectionState with _$CheerCollectionState {

  const factory CheerCollectionState({
    @Default([]) List<Cheer> cheers,
  }) = _CheerCollectionState;

}