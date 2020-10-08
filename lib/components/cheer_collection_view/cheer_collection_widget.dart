
import 'package:flutter/cupertino.dart';
import 'package:kaishokunmobile/configs/app_color.dart';
import 'package:kaishokunmobile/configs/app_text_style.dart';

class CheerCollectionWidget {

  static Widget cheerCollectionItem(int index,BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: AppColor.surface),
      padding: EdgeInsets.all(24),
      margin: EdgeInsets.only(bottom: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _itemTitle("title"),

        ],
      ),
    );
  }

  static Widget _itemTitle(String title) {
    return Text(
      title,
      style: AppTextStyle.strong16Bold,
    );
  }

}