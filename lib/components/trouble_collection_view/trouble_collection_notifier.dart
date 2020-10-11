
import 'package:kaishokunmobile/components/trouble_collection_view/trouble_collection_state.dart';
import 'package:state_notifier/state_notifier.dart';

class TroubleCollectionNotifier extends StateNotifier<TroubleCollectionState> {
  TroubleCollectionNotifier() : super(const TroubleCollectionState()) {}
  increment() => state = state.copyWith(count: state.count + 1);
}