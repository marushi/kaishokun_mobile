
import 'package:kaishokunmobile/configs/developer_information.dart';
import 'package:kaishokunmobile/models/enum/app_bar_type.dart';
import 'package:kaishokunmobile/models/enum/bottom_navigation_type.dart';
import 'package:kaishokunmobile/models/enum/developer_information_type.dart';
import 'package:kaishokunmobile/models/enum/developer_type.dart';
import 'package:kaishokunmobile/models/enum/menu_item_type.dart';
import 'package:kaishokunmobile/models/enum/setting_type.dart';

class Convert {

  static String appBarTitle(AppBarType titleEnum) {
    switch (titleEnum) {
      case AppBarType.trouble:
        return "みんなの悩み";
      case AppBarType.cheer:
        return "みんなからの応援";
      case AppBarType.menu:
        return "メニュー";
      case AppBarType.createTrouble:
        return "悩みを吐き出す";
      case AppBarType.setting:
        return "設定";
      case AppBarType.developer:
        return "開発者";
      default:
        return "";
    }
  }


  static AppBarType appbarTitleEnum(int pageIndex) {
    switch (pageIndex) {
      case 0:
        return AppBarType.trouble;
      case 1:
        return AppBarType.cheer;
      case 2:
        return AppBarType.menu;
      default:
        return AppBarType.trouble;
    }
  }
  
  static String bottomNavTitle(BottomNavigationType type) {
    switch (type) {
      case BottomNavigationType.trouble:
        return "悩み";
      case BottomNavigationType.cheer:
        return "応援";
      case BottomNavigationType.menu:
        return "メニュー";
      default:
        return "";
    }
  }

  static String menuTitle(MenuItemType type) {
    switch (type) {
      case MenuItemType.setting:
        return "設定";
      case MenuItemType.opinion:
        return "ご意見";
      case MenuItemType.evaluation:
        return "評価";
      case MenuItemType.developer:
        return "作った人";
      case MenuItemType.cheerApp:
        return "解消くんを応援する";
      default:
        return "";
    }
  }

  static String settingTitle(SettingType type) {
    switch (type) {
      case SettingType.penName:
        return "ペンネーム";
      case SettingType.twitter:
        return "Twitter";
      case SettingType.instagram:
        return "Instagram";
      default:
        return "";
    }
  }

  static String developerInformation(DeveloperType developerType,DeveloperInformationType informationType) {
    if (developerType == DeveloperType.frontEnd) {
      switch (informationType) {
        case DeveloperInformationType.role:
          return DeveloperInformation.frontEndRole;
        case DeveloperInformationType.name:
          return DeveloperInformation.frontEndName;
        case DeveloperInformationType.introduction:
          return DeveloperInformation.frontEndIntroduction;
        case DeveloperInformationType.twitter:
          return DeveloperInformation.frontEndTwitterURL;
        case DeveloperInformationType.instagram:
          return DeveloperInformation.frontEndInstagramURL;
        default:
          return "";
      }
    } else{
      switch (informationType) {
        case DeveloperInformationType.role:
          return DeveloperInformation.backEndRole;
        case DeveloperInformationType.name:
          return DeveloperInformation.backEndName;
        case DeveloperInformationType.introduction:
          return DeveloperInformation.backEndIntroduction;
        case DeveloperInformationType.twitter:
          return DeveloperInformation.backEndTwitterURL;
        case DeveloperInformationType.instagram:
          return DeveloperInformation.backEndInstagramURL;
        default:
          return "";
      }
    }
  }
}