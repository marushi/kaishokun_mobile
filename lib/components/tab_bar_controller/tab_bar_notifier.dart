
import 'package:kaishokunmobile/components/tab_bar_controller/tab_bar_state.dart';
import 'package:state_notifier/state_notifier.dart';

class TabBarNotifier extends StateNotifier<TabBarState> {
  TabBarNotifier() : super(const TabBarState()) {}
  increment() => state = state.copyWith(count: state.count + 1);
}