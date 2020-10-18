
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaishokunmobile/common/margin_widget.dart';
import 'package:kaishokunmobile/common/my_widget.dart';
import 'package:kaishokunmobile/configs/app_text_style.dart';
import 'package:kaishokunmobile/helpers/convert.dart';
import 'package:kaishokunmobile/models/enum/app_bar_type.dart';
import 'package:kaishokunmobile/models/enum/post_trouble_type.dart';
import 'package:kaishokunmobile/models/main/user.dart';

class PostTroubleWidget {

  static AppBar postTroubleAppBar(BuildContext context) {
    String title = Convert.appBarTitle(AppBarType.createTrouble);
    Widget action = Container();
    return MyWidget.simpleAppBar(true, title, action, context);
  }

  static Widget postTroubleSection(PostTroubleType type,TextEditingController controller) {
    int line =  _postTextFieldLines(type);
    String titleText = _postTextFieldTitle(type);

    if (type == PostTroubleType.penName) {
      controller.text = User().username;
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _postTroubleTitleText(titleText),
        MyWidget.simpleTextField(line, "",controller),
      ],
    );
  }

  static Widget postTroubleLevel() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _postTroubleTitleText(_postTextFieldTitle(PostTroubleType.level)),
        MarginWidget.margin8(),
        Container(
          constraints: BoxConstraints.expand(height: 80),
          margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
          child: CupertinoPicker(
            itemExtent: 40,
            children: <Widget>[
              _pickerText(1),
              _pickerText(2),
              _pickerText(3),
              _pickerText(4),
              _pickerText(5),
            ],
            onSelectedItemChanged: (value) {print(value + 1);},
          ),
        ),
      ],
    );
  }

  static Widget _pickerText(int count) {
    return Center(
      child: Text(
        "$count",
        style: AppTextStyle.onSurface21Normal,
      ),
    );
  }

  static int _postTextFieldLines(PostTroubleType type) {
    if (type == PostTroubleType.content) {
      return 10;
    } else {
      return 1;
    }
  }

  static String _postTextFieldTitle(PostTroubleType type) {
    switch (type) {
      case PostTroubleType.title:
        return "タイトル";
      case PostTroubleType.penName:
        return "ペンネーム";
      case PostTroubleType.content:
        return "内容";
      case PostTroubleType.level:
        return "悩みレベル";
      default:
        return "";
    }
  }

  static Widget _postTroubleTitleText(String titleText) {
    return Text(
      titleText,
      style: AppTextStyle.onSurface14Normal,
    );
  }
}