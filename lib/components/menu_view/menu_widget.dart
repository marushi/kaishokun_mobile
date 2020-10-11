
import 'dart:io';

import 'package:app_review/app_review.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaishokunmobile/configs/app_color.dart';
import 'package:kaishokunmobile/configs/app_text_style.dart';
import 'package:kaishokunmobile/helpers/convert.dart';
import 'package:kaishokunmobile/models/enum/menu_item_type.dart';

class MenuWidget {
  static final List<MenuItemType> menuTitles = [MenuItemType.setting,MenuItemType.evaluation,MenuItemType.developer,MenuItemType.cheerApp];

  static Widget menuViewItem(BuildContext context,int index) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.fromLTRB(16,20,0,20),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 0.5,color: AppColor.silver,style: BorderStyle.solid)),
          color: AppColor.surface,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            _menuTitle(index),
          ],
        ),
      ),
      onTap: () {_tapMenuItem(context,index);},
    );
  }

  static Widget _menuTitle(int index) {
    String title = Convert.menuTitle(menuTitles[index]);
    return Text(title,style: AppTextStyle.menuText,);
  }

  static void _tapMenuItem(BuildContext context,int index) {
    MenuItemType itemType = menuTitles[index];
    switch (itemType) {
      case MenuItemType.setting:
        _transitionSettingPage(context);
        break;
      case MenuItemType.evaluation:
        _evaluateApp();
        break;
      case MenuItemType.developer:
        _transitionDeveloperPage(context);
        break;
      case MenuItemType.cheerApp:
        _cheerApp();
        break;
      default:
        break;
    }
  }

  static void _transitionSettingPage(BuildContext context) {
    Navigator.pushNamed(context, '/setting');
  }

  static void _evaluateApp() {
    if (Platform.isIOS) {
      AppReview.requestReview.then((onValue) {});
    }
  }

  static void _transitionDeveloperPage(BuildContext context) {
    Navigator.pushNamed(context, '/developer');
  }

  static void _cheerApp() {

  }
}