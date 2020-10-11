
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaishokunmobile/common/margin_widget.dart';
import 'package:kaishokunmobile/common/my_widget.dart';
import 'package:kaishokunmobile/configs/app_color.dart';
import 'package:kaishokunmobile/configs/app_text_style.dart';
import 'package:kaishokunmobile/helpers/convert.dart';
import 'package:kaishokunmobile/models/enum/app_bar_type.dart';

class TroubleSingleWidget {

  static AppBar troubleSingleAppBar(BuildContext context) {
    String title = Convert.appBarTitle(AppBarType.trouble);
    Widget action = Container();

    return MyWidget.simpleAppBar(true, title, action, context);
  }

  static Widget troubleTitle(String title) {
    return Text(
      title,
      style: AppTextStyle.strong18Bold,
    );
  }

  static Widget troubleLevel(int level) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text("悩みレベル："),
        Text("$level"),
      ],
    );
  }

  static Widget penName(String name) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text("ペンネーム："),
        Text(name),
      ],
    );
  }

  static Widget contentText(String content) {
      return  Flexible(
        child: Text(content),
    );
  }

  static Widget cheerMessage() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("応援メッセージ",style: AppTextStyle.orange16Normal,),
        MarginWidget.margin8(),
        MyWidget.simpleTextField(10,""),
      ],
    );
  }

  static Widget cheerPanName() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("ペンネーム",style: AppTextStyle.orange16Normal,),
        MarginWidget.margin8(),
        MyWidget.simpleTextField(1,""),
      ],
    );
  }

  static Widget cheerBottomButton(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.expand(height: 40),
      child: RaisedButton(
        shape: StadiumBorder(),
        color: AppColor.green,
        onPressed: () {Navigator.pop(context);},
        child: Text("入力完了",style: AppTextStyle.surface17Bold,),
      ),
    );
  }
}