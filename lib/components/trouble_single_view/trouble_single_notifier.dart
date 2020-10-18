
import 'package:kaishokunmobile/api/repository/repository.dart';
import 'package:kaishokunmobile/models/main/post_cheer.dart';
import 'package:state_notifier/state_notifier.dart';
import 'trouble_single_state.dart';

class TroubleSingleNotifier extends StateNotifier<TroubleSingleState> with LocatorMixin {

  Repository get repository => read<Repository>();

  TroubleSingleNotifier() : super(const TroubleSingleState()) {}

  @override
  void initState() {
    super.initState();
  }

  Future<void> postCheer(PostCheer cheer) async {
    await repository.postCheer(cheer).then((value) => {
      print("post cheer success")
    });
  }
}