
import 'package:state_notifier/state_notifier.dart';
import 'menu_state.dart';

class MenuNotifier extends StateNotifier<MenuState> {
  MenuNotifier() : super(const MenuState()) {}
  increment() => state = state.copyWith(count: state.count + 1);
}