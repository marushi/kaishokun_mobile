

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:kaishokunmobile/common/margin_widget.dart';
import 'package:kaishokunmobile/components/setting_view/setting_notifier.dart';
import 'package:kaishokunmobile/components/setting_view/setting_state.dart';
import 'package:kaishokunmobile/components/setting_view/setting_widget.dart';
import 'package:kaishokunmobile/configs/app_color.dart';
import 'package:kaishokunmobile/models/enum/setting_type.dart';

class SettingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<SettingNotifier,SettingState>(
      create: (_) => SettingNotifier(),
      child: Scaffold(
        backgroundColor: AppColor.back,
        appBar: SettingWidget.settingPageAppBar(context),
        body: Container(
          decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 0.5,color: AppColor.silver,style: BorderStyle.solid)),color: AppColor.surface),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              MarginWidget.margin16(),
              SettingWidget.inputProfileData(SettingType.penName),
              SettingWidget.inputProfileData(SettingType.twitter),
              SettingWidget.inputProfileData(SettingType.instagram),
              MarginWidget.margin64(),
              SettingWidget.saveButton(context),
              MarginWidget.margin32(),
          ],
        ),),
      ),
    );
  }
}