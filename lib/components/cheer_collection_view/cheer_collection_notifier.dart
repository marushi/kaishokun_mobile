
import 'package:kaishokunmobile/components/cheer_collection_view/cheer_collection_state.dart';
import 'package:state_notifier/state_notifier.dart';

class CheerCollectionNotifier extends StateNotifier<CheerCollectionState> {
  CheerCollectionNotifier() : super(const CheerCollectionState()) {}
  increment() => state = state.copyWith(count: state.count + 1);
}