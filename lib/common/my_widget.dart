
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaishokunmobile/configs/app_color.dart';
import 'package:kaishokunmobile/configs/app_image.dart';
import 'package:kaishokunmobile/configs/app_text_style.dart';
import 'package:kaishokunmobile/helpers/convert.dart';
import 'package:kaishokunmobile/models/enum/button_type.dart';
import 'package:url_launcher/url_launcher.dart';

class MyWidget {

  static Widget titleText(String title) {
    return Text(
      title,
      style: AppTextStyle.surface17Bold,
    );
  }

  static AppBar simpleAppBar(bool canPop,String title,Widget action,BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.green,
      centerTitle: true,
      automaticallyImplyLeading: false,
      title: MyWidget.titleText(title),
      actions: <Widget>[action],
      leading: _appBarLeadingButton(canPop,context),
    );
  }

  static _appBarLeadingButton(bool canPop,BuildContext context) {
    if (canPop) {
      return IconButton(
        icon: AppImage.chevronLeft,
        color: AppColor.surface,
        onPressed: () {
          Navigator.pop(context);
        }
      );
    }
    return Container();
  }

  static simpleTextField(int lines,String hint,TextEditingController controller) {
    return TextField(
      controller: controller,
      maxLines: lines,
      cursorColor: AppColor.onSurface,
      cursorWidth: 0.5,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: AppColor.onSurface,
            width: 0.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: AppColor.onSurface,
            width: 0.5,
          ),
        ),
        contentPadding: EdgeInsets.all(16),
        hintText: hint,
      ),
    );
  }

  static bottomLineTextField(int lines,String hint,TextEditingController controller) {
    return CupertinoTextField(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 0.5,color: AppColor.onSurface,style: BorderStyle.solid)),
      ),
      cursorColor: AppColor.onSurface,
      cursorWidth: 0.5,
      controller: controller,
    );
  }

  static Widget twitterIcon(String url,BuildContext context) {
    return InkWell(
      child: SizedBox(
        height: 24,
        width: 24,
        child: AppImage.twitter,
      ),
      onTap: () async {
        if (await canLaunch(url)) {
          launch(url);
        } else {
          print(url);
        }
      },
    );
  }

  static Widget instagramIcon(String url,BuildContext context) {
    return InkWell(
      child: SizedBox(
        height: 24,
        width: 24,
        child: AppImage.instagram,
      ),
      onTap: () async {
        if (await canLaunch(url)) {
          launch(url);
        } else {
          print(url);
        }
      },
    );
  }

  static BoxDecoration simpleDecoration() {
    return BoxDecoration(
      border: Border(bottom: BorderSide(width: 0.5,color: AppColor.silver,style: BorderStyle.solid)),
      color: AppColor.surface
    );
  }

  static Widget simpleBottomButton(BuildContext context,ButtonType type,void Function() function) {
    String title = Convert.buttonTitleText(type);

    return Builder(builder: (context) {
      return ConstrainedBox(
        constraints: BoxConstraints.expand(height: 40),
        child: RaisedButton(
          shape: StadiumBorder(),
          color: AppColor.green,
          onPressed: function,
          child: Text(title,style: AppTextStyle.surface17Bold,),
        ),
      );
    });
  }
}