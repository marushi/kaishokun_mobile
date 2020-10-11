
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaishokunmobile/common/my_widget.dart';
import 'package:kaishokunmobile/configs/app_color.dart';
import 'package:kaishokunmobile/configs/app_text_style.dart';
import 'package:kaishokunmobile/helpers/convert.dart';
import 'package:kaishokunmobile/models/enum/app_bar_type.dart';
import 'package:kaishokunmobile/models/enum/setting_type.dart';

class SettingWidget {

  static AppBar settingPageAppBar(BuildContext context) {
    String title = Convert.appBarTitle(AppBarType.setting);
    Widget action = Container();
    return MyWidget.simpleAppBar(true, title, action, context);
  }

  static Widget inputProfileData(SettingType type) {
    return Container(
      padding: EdgeInsets.all(24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _inputProfileTitle(type),
          _inputProfileForm(type)
        ],
      ),
    );
  }

  static Widget _inputProfileTitle(SettingType type) {
    return Text(
      Convert.settingTitle(type),
      style: AppTextStyle.onSurface16Normal,
    );
  }

  static Widget _inputProfileForm(SettingType type) {
    return SizedBox(
      width: 120,
      child: MyWidget.bottomLineTextField(1, ""),
    );
  }

  static Widget saveButton(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: 240,
        child: RaisedButton(
          child: Text("保存",style: AppTextStyle.orange16Normal,),
          color: AppColor.surface,
          shape: StadiumBorder(
            side: BorderSide(color: AppColor.orange),
          ),
          onPressed: () {Navigator.pop(context);},
        ),
      )
    );
  }
}