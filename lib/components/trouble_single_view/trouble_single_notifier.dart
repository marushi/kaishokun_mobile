
import 'package:state_notifier/state_notifier.dart';
import 'trouble_single_state.dart';

class TroubleSingleNotifier extends StateNotifier<TroubleSingleState> {
  TroubleSingleNotifier() : super(const TroubleSingleState()) {}
  increment() => state = state.copyWith(count: state.count + 1);
}