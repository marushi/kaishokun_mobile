
import 'package:flutter/cupertino.dart';
import 'package:kaishokunmobile/components/post_trouble_view/trouble_posted_view/trouble_posted_widget.dart';
import 'package:kaishokunmobile/configs/app_color.dart';

class TroublePostedView extends StatelessWidget {

  final String troubleTitle;

  TroublePostedView({
    this.troubleTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      color: AppColor.back,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TroublePostedWidget.topText(),
          TroublePostedWidget.troubleTitleText(troubleTitle),

        ],
      ),
    );
  }
}