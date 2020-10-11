
import 'package:state_notifier/state_notifier.dart';
import 'cheer_collection_state.dart';

class CheerCollectionNotifier extends StateNotifier<CheerCollectionState> {
  CheerCollectionNotifier() : super(const CheerCollectionState()) {}
  increment() => state = state.copyWith(count: state.count + 1);
}