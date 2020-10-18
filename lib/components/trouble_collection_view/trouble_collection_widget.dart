
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaishokunmobile/common/margin_widget.dart';
import 'package:kaishokunmobile/components/trouble_single_view/trouble_single_view.dart';
import 'package:kaishokunmobile/configs/app_color.dart';
import 'package:kaishokunmobile/configs/app_text_style.dart';
import 'package:kaishokunmobile/models/main/trouble.dart';

class TroubleCollectionWidget {

  static Widget troubleCollectionItem(int index,BuildContext context,Trouble trouble) {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: AppColor.surface),
        padding: EdgeInsets.all(24),
        margin: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            _itemTitle(trouble.title),
            MarginWidget.margin8(),
            _troubleLevel(trouble.trouble_level),
            _penName(trouble.username),
            MarginWidget.margin8(),
            _content(trouble.content),
          ],
        ),
      ),
      onTap: () {_tapTrouble(context,trouble);},
    );
  }

  static Widget _itemTitle(String title) {
    return Text(
      title,
      style: AppTextStyle.strong18Bold,
    );
  }

  static Widget _troubleLevel(int level) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text("悩みレベル："),
        Text("$level"),
      ],
    );
  }

  static Widget _penName(String name) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text("ペンネーム："),
        Text(name),
      ],
    );
  }

  static Widget _content(String content) {
    return Flexible(
        child: Text(content),
    );
  }

  static void _tapTrouble(BuildContext context,Trouble trouble) {
    Navigator.push(context, new MaterialPageRoute(builder: (context) =>
        TroubleSingleView(trouble: trouble,)
    ));
  }
}