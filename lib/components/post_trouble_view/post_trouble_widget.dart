
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaishokunmobile/common/my_widget.dart';
import 'package:kaishokunmobile/helpers/convert.dart';
import 'package:kaishokunmobile/models/enum/app_bar_type.dart';

class PostTroubleWidget {

  static AppBar postTroubleAppBar(BuildContext context) {
    String title = Convert.appBarTitle(AppBarType.createTrouble);
    Widget action = Container();
    return MyWidget.simpleAppBar(true, title, action, context);
  }
}