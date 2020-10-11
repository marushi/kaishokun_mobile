import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaishokunmobile/common/margin_widget.dart';
import 'package:kaishokunmobile/configs/app_color.dart';
import 'package:kaishokunmobile/configs/app_text_style.dart';

class CheerCollectionWidget {
  static Widget cheerCollectionItem(int index,BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 0.5,color: AppColor.silver,style: BorderStyle.solid)),
          color: AppColor.surface,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            _titleAndDate("マルコシオン",DateTime.now()),
            MarginWidget.margin8(),
            _cheerContent("あああああああああああああああああああああああああああああプログラミング wwwwwwwwwwwwwwwwwwwwwwwwaおおおお"),
          ],
        ),
      ),
      onTap: () {
        _tapCheerCollectionItem(context);
      },
    );
  }

  static Widget _titleAndDate(String title,DateTime dateTime) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(title,style: AppTextStyle.orange16Normal,),
        Text(dateTime.toString(),style: AppTextStyle.silver12Normal,)
      ],
    );
  }

  static Widget _cheerContent(String content) {
    return Flexible(
        child: Text(
          content,
        ),
    );
  }

  static void _tapCheerCollectionItem(BuildContext context) {
    Navigator.pushNamed(context, '/cheer_single');
  }
}