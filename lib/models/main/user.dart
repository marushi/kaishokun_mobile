
import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:kaishokunmobile/services/shared_preference_service.dart';

class User {
  static final User _instance = User._internal();
  factory User() => _instance;
  User._internal();

  String username;
  String uuid;
  String twitterId;
  String instagramId;

  void initialize() {
    username = SharedPreferenceService().fetchPenName();
    twitterId = SharedPreferenceService().fetchTwitterId();
    instagramId = SharedPreferenceService().fetchInstagramId();

    if (Platform.isIOS) {
      iosDeviceId().then((id) => {
        uuid = id
      });
    }
    
    if (Platform.isAndroid) {
      androidDeviceId().then((id) => {
        uuid = id
      });
    }
  }

  Future<String> androidDeviceId() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    return androidInfo.androidId;
  }

  Future<String> iosDeviceId() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    IosDeviceInfo iosDeviceInfo = await deviceInfo.iosInfo;
    return iosDeviceInfo.identifierForVendor;
  }
}