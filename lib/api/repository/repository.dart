
import 'package:kaishokunmobile/api/api_service.dart';
import 'package:kaishokunmobile/models/main/cheer.dart';
import 'package:kaishokunmobile/models/main/post_cheer.dart';
import 'package:kaishokunmobile/models/main/post_trouble.dart';
import 'package:kaishokunmobile/models/main/trouble.dart';
import 'package:kaishokunmobile/models/main/user.dart';

class Repository {
  ///ここにApiServiceへのリクエストを記述する

  Future<List<Trouble>> fetchTroubleData() async {
    List<Trouble> troubles;
    await ApiService().fetchTroubleData().then((value) => {
      troubles = value
    });
    return troubles;
  }

  Future<List<Cheer>> fetchCheerData(int page) async {
    String uuid = User().uuid;

    List<Cheer> cheers;
    await ApiService().fetchCheerData(uuid, page).then((value) => {
      cheers = value
    });
    return cheers;
  }

  Future<void> postCheer(PostCheer postCheer) async {
    await ApiService().postCheer(postCheer);
  }

  Future<void> postTrouble(PostTrouble trouble) async {
    await ApiService().postTrouble(trouble);
  }
}