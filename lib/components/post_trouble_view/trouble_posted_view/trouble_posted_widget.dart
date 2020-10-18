
import 'package:flutter/cupertino.dart';
import 'package:kaishokunmobile/configs/app_text_style.dart';

class TroublePostedWidget {

  static Widget topText() {
    return Text(
      "入力お疲れ様でした。",
      style: AppTextStyle.onSurface16Normal,
    );
  }

  static Widget troubleTitleText(String title) {
    return Text(
      "「$title」\nを乗り越えられそうですか？",
      style: AppTextStyle.onSurface16Normal,
    );
  }
}