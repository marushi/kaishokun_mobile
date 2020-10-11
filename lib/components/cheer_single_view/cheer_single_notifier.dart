
import 'package:state_notifier/state_notifier.dart';
import 'cheer_single_state.dart';

class CheerSingleNotifier extends StateNotifier<CheerSingleState> {
  CheerSingleNotifier() : super(const CheerSingleState()) {}
  increment() => state = state.copyWith(count: state.count + 1);
}