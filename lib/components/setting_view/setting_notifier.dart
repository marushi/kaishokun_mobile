
import 'package:state_notifier/state_notifier.dart';
import 'setting_state.dart';

class SettingNotifier extends StateNotifier<SettingState> {
  SettingNotifier() : super(const SettingState()) {}
  increment() => state = state.copyWith(count: state.count + 1);
}