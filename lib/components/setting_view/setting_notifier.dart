
import 'package:kaishokunmobile/models/main/user.dart';
import 'package:kaishokunmobile/services/shared_preference_service.dart';
import 'package:state_notifier/state_notifier.dart';
import 'setting_state.dart';

class SettingNotifier extends StateNotifier<SettingState> with LocatorMixin{

  SettingNotifier() : super(const SettingState()) {}

  @override
  void initState() {
    fetchMyPenName();
    fetchMyTwitterId();
    fetchMyInstagramId();
  }

  void fetchMyPenName() {
    String name = SharedPreferenceService().fetchPenName() ?? "";
    state = state.copyWith(penName: name);
  }

  void fetchMyTwitterId() {
    String twitterId = SharedPreferenceService().fetchTwitterId() ?? "";
    state = state.copyWith(twitterId: twitterId);
  }

  void fetchMyInstagramId() {
    String instagramId = SharedPreferenceService().fetchInstagramId() ?? "";
    state = state.copyWith(instagramId: instagramId);
  }

  Future<void> saveLocalData(String name, String twitterId, String instagramId) async {
    await SharedPreferenceService().savePenName(name);
    await SharedPreferenceService().saveTwitterInfo(twitterId);
    await SharedPreferenceService().saveInstagramInfo(instagramId);

    User().initialize();
  }
}