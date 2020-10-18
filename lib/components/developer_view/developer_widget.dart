import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaishokunmobile/common/margin_widget.dart';
import 'package:kaishokunmobile/common/my_widget.dart';
import 'package:kaishokunmobile/configs/app_image.dart';
import 'package:kaishokunmobile/configs/app_text_style.dart';
import 'package:kaishokunmobile/helpers/convert.dart';
import 'package:kaishokunmobile/models/enum/app_bar_type.dart';
import 'package:kaishokunmobile/models/enum/developer_information_type.dart';
import 'package:kaishokunmobile/models/enum/developer_type.dart';

class DeveloperWidget {
  static AppBar developerAppBar(BuildContext context) {
    String title = Convert.appBarTitle(AppBarType.developer);
    Widget action = Container();
    return MyWidget.simpleAppBar(true, title, action, context);
  }

  static Widget developerWidget(BuildContext context,DeveloperType type) {
    return Container(
      decoration: MyWidget.simpleDecoration(),
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          _developerRole(type),
          MarginWidget.margin8(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              _developerImage(type),
              MarginWidget.margin16(),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    _developerNameAndSNS(type, context),
                    MarginWidget.margin16(),
                    _developerIntroduction(type),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  static Widget _developerRole(DeveloperType type) {
    return Text(
      Convert.developerInformation(type, DeveloperInformationType.role),
      style: AppTextStyle.onSurface21Normal,
    );
  }

  static Widget _developerImage(DeveloperType type) {
    Image image;
    if (type == DeveloperType.frontEnd) {
      image = AppImage.maruko;
    }else{
      image = AppImage.shingo;
    }

    return ClipOval(
      child: SizedBox(
        height: 64,
        width: 64,
        child: image,
      )
    );
  }

  static Widget _developerNameAndSNS(DeveloperType type,BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _developerName(type),
        MarginWidget.margin8(),
        MyWidget.twitterIcon(Convert.developerInformation(type, DeveloperInformationType.twitter),context),
        MarginWidget.margin8(),
        MyWidget.instagramIcon(Convert.developerInformation(type, DeveloperInformationType.instagram), context),
      ],
    );
  }

  static Widget _developerIntroduction(DeveloperType type) {
    return Flexible(
        child: Text(
          Convert.developerInformation(type, DeveloperInformationType.introduction),
          style: AppTextStyle.onSurface16Normal,
        ),
    );
  }

  static Widget _developerName(DeveloperType type) {
    return Text(
      Convert.developerInformation(type, DeveloperInformationType.name),
      style: AppTextStyle.onSurface16Normal,
    );
  }
}