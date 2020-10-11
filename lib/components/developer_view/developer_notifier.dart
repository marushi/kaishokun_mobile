
import 'package:kaishokunmobile/components/developer_view/developer_state.dart';
import 'package:state_notifier/state_notifier.dart';
import 'developer_state.dart';

class DeveloperNotifier extends StateNotifier<DeveloperState> {
  DeveloperNotifier() : super(const DeveloperState()) {}
  increment() => state = state.copyWith(count: state.count + 1);
}