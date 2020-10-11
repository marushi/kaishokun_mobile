
import 'package:state_notifier/state_notifier.dart';
import 'post_trouble_state.dart';

class PostTroubleNotifier extends StateNotifier<PostTroubleState> {
  PostTroubleNotifier() : super(const PostTroubleState()) {}
  increment() => state = state.copyWith(count: state.count + 1);
}