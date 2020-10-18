
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaishokunmobile/configs/app_color.dart';
import 'package:kaishokunmobile/configs/app_text_style.dart';

class MySimpleButton extends StatelessWidget {
  final void Function() onPressed;
  final String title;

  MySimpleButton({
    this.onPressed,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.expand(height: 40),
      child: RaisedButton(
        shape: StadiumBorder(),
        color: AppColor.green,
        onPressed: onPressed,
        child: Text(title,style: AppTextStyle.surface17Bold,),
      ),
    );
  }
}