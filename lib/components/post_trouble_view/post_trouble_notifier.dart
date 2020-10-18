
import 'package:kaishokunmobile/api/repository/repository.dart';
import 'package:kaishokunmobile/models/main/post_trouble.dart';
import 'package:state_notifier/state_notifier.dart';
import 'post_trouble_state.dart';

class PostTroubleNotifier extends StateNotifier<PostTroubleState> with LocatorMixin {

  Repository get repository => Repository();

  PostTroubleNotifier() : super(const PostTroubleState()) {}

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> postTrouble(PostTrouble postTrouble) async {
    await repository.postTrouble(postTrouble).then((value) => {
      print("post trouble success")
    });
  }

  void selectTroubleLevel(int level) {
    state = state.copyWith(troubleLevel: level);
  }
}