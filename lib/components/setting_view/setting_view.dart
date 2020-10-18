

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:kaishokunmobile/common/margin_widget.dart';
import 'package:kaishokunmobile/common/my_widget.dart';
import 'package:kaishokunmobile/components/setting_view/setting_notifier.dart';
import 'package:kaishokunmobile/components/setting_view/setting_state.dart';
import 'package:kaishokunmobile/components/setting_view/setting_widget.dart';
import 'package:kaishokunmobile/configs/app_color.dart';
import 'package:kaishokunmobile/configs/app_text_style.dart';
import 'package:kaishokunmobile/helpers/validation.dart';
import 'package:kaishokunmobile/models/enum/setting_type.dart';
import 'package:provider/provider.dart';

class SettingView extends StatelessWidget {
  final TextEditingController _penNameController = TextEditingController();
  final TextEditingController _twitterIdController = TextEditingController();
  final TextEditingController _instagramIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StateNotifierProvider<SettingNotifier,SettingState>(
            create: (_) => SettingNotifier(),
            builder: (context,child) {
              return  Scaffold(
                backgroundColor: AppColor.back,
                appBar: SettingWidget.settingPageAppBar(context),
                body: Container(
                  decoration: MyWidget.simpleDecoration(),
                  child: Builder(builder: (context) {

                    _penNameController.text = context.select<SettingState,String>((state) => state.penName);
                    _twitterIdController.text = context.select<SettingState,String>((state) => state.twitterId);
                    _instagramIdController.text = context.select<SettingState,String>((state) => state.instagramId);

                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        MarginWidget.margin16(),
                        SettingWidget.inputProfileData(SettingType.penName,_penNameController),
                        SettingWidget.inputProfileData(SettingType.twitter,_twitterIdController),
                        SettingWidget.inputProfileData(SettingType.instagram,_instagramIdController),
                        MarginWidget.margin64(),
                        saveButton(),
                        MarginWidget.margin32(),
                      ],
                    );
                  }),
                ),
              );
            }
        ),
      ],
    );
  }

  Widget saveButton() {
    return Builder(builder: (context) {
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
              onPressed: () async {
                ///バリデーション、出すならダイアログも実装する。
                if (!Validation.twitterIdValication(_twitterIdController.text)) {
                  //return;
                }
                ///ここでHUDを表示
                print(_penNameController.text);
                await context.read<SettingNotifier>().saveLocalData(_penNameController.text,_twitterIdController.text,_instagramIdController.text);
                ///ここでHUDを非表示
                Navigator.pop(context);
              },
            ),
          )
      );
    });
  }
}