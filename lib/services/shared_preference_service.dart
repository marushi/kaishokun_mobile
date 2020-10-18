
import 'package:kaishokunmobile/configs/shared_preferences_key.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceService {
  //シングルトンインスタンス
  static final SharedPreferenceService _instance = SharedPreferenceService._internal();
  SharedPreferences _sharedPreferences;

  //ファクトリ
  factory SharedPreferenceService() {
    return _instance;
  }

  //インスタンスの生成
  SharedPreferenceService._internal();

  Future<void> getSharedPreferenceInstance() async {
    while(_sharedPreferences == null) {
      _sharedPreferences = await SharedPreferences.getInstance();
    }
  }

  Future<void> savePenName(String name) async {
    await _sharedPreferences.setString(SharedPreferencesKey.nameKey, name);
  }

  Future<void> saveTwitterInfo(String twitterId) async {
    await _sharedPreferences.setString(SharedPreferencesKey.twitterKey, twitterId);
  }

  Future<void> saveInstagramInfo(String instagramId) async {
    await _sharedPreferences.setString(SharedPreferencesKey.instagramKey, instagramId);
  }

  String fetchPenName() {
    String myPenName = _sharedPreferences.getString(SharedPreferencesKey.nameKey);
    return myPenName;
  }

  String fetchTwitterId() {
    String myTwitterId = _sharedPreferences.getString(SharedPreferencesKey.twitterKey);
    return myTwitterId;
  }

  String fetchInstagramId() {
    String myInstagramId = _sharedPreferences.getString(SharedPreferencesKey.instagramKey);
    return myInstagramId;
  }
}