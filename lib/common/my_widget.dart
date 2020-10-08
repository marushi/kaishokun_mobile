
import 'package:flutter/material.dart';
import 'package:kaishokunmobile/configs/app_color.dart';
import 'package:kaishokunmobile/configs/app_image.dart';
import 'package:kaishokunmobile/configs/app_text_style.dart';

class MyWidget {

  static Widget titleText(String title) {
    return Text(
      title,
      style: AppTextStyle.surface17Bold,
    );
  }

  static AppBar simpleAppBar(bool canPop,String title,Widget action,BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.green,
      centerTitle: true,
      automaticallyImplyLeading: false,
      title: MyWidget.titleText(title),
      actions: <Widget>[action],
      leading: _appBarLeadingButton(canPop,context),
    );
  }

  static _appBarLeadingButton(bool canPop,BuildContext context) {
    if (canPop) {
      return IconButton(
        icon: AppImage.chevronLeft,
        onPressed: () {
          Navigator.pop(context);
        }
      );
    }
    return Container();
  }
}