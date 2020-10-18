import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaishokunmobile/common/margin_widget.dart';
import 'package:kaishokunmobile/components/cheer_single_view/cheer_single_view.dart';
import 'package:kaishokunmobile/configs/app_color.dart';
import 'package:kaishokunmobile/configs/app_text_style.dart';
import 'package:kaishokunmobile/helpers/my_format.dart';
import 'package:kaishokunmobile/models/main/cheer.dart';

class CheerCollectionWidget {
  static Widget cheerCollectionItem(int index,BuildContext context,Cheer cheer) {
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
            _nameAndDate(cheer.username,cheer.posted_at),
            MarginWidget.margin8(),
            _cheerContent(cheer.content),
          ],
        ),
      ),
      onTap: () {
        _tapCheerCollectionItem(context,cheer);
      },
    );
  }

  static Widget _nameAndDate(String title,DateTime dateTime) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(title,style: AppTextStyle.orange16Normal,),
        Text(MyFormat.mdJp.format(dateTime),style: AppTextStyle.silver12Normal,)
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

  static void _tapCheerCollectionItem(BuildContext context,Cheer cheer) {
    Navigator.push(context, MaterialPageRoute(builder: (context) =>
        CheerSingleView(cheer: cheer,)
    ));
  }
}