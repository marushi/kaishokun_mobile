
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaishokunmobile/common/margin_widget.dart';
import 'package:kaishokunmobile/common/my_widget.dart';
import 'package:kaishokunmobile/configs/app_text_style.dart';
import 'package:kaishokunmobile/helpers/convert.dart';
import 'package:kaishokunmobile/helpers/my_format.dart';
import 'package:kaishokunmobile/models/enum/app_bar_type.dart';
import 'package:kaishokunmobile/models/main/cheer.dart';

class CheerSingleWidget {

  static AppBar cheerSingleAppBar(BuildContext context) {
    String title = Convert.appBarTitle(AppBarType.cheer);
    Widget action = Container();
    return MyWidget.simpleAppBar(true, title, action, context);
  }

  static Widget nameAndDate(String title,DateTime dateTime) {
    String date = MyFormat.mdJp.format(dateTime);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(title,style: AppTextStyle.orange16Normal,),
        Text(date,style: AppTextStyle.silver12Normal,)
      ],
    );
  }

  static Widget cheerContent(String content) {
    return Flexible(
      child: Text(
        content,
      ),
    );
  }

  static Widget cheerPersonInfo(BuildContext context,Cheer cheer) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("応援してくれた人",style: AppTextStyle.orange16Normal,),
        MarginWidget.margin8(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            MyWidget.twitterIcon(cheer.twitter, context),
            MarginWidget.margin8(),
            MyWidget.instagramIcon(cheer.instagram, context),
          ],
        )
      ],
    );
  }
}