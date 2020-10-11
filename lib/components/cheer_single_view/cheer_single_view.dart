
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:kaishokunmobile/common/margin_widget.dart';
import 'package:kaishokunmobile/components/cheer_single_view/cheer_single_notifier.dart';
import 'package:kaishokunmobile/components/cheer_single_view/cheer_single_state.dart';
import 'package:kaishokunmobile/components/cheer_single_view/cheer_single_widget.dart';
import 'package:kaishokunmobile/configs/app_color.dart';

class CheerSingleView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<CheerSingleNotifier,CheerSingleState>(
      create: (_) => CheerSingleNotifier(),
      child: Scaffold(
        backgroundColor: AppColor.back,
        appBar: CheerSingleWidget.cheerSingleAppBar(context),
        body: Container(
          decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 0.5,color: AppColor.silver,style: BorderStyle.solid)),color: AppColor.surface),
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              CheerSingleWidget.nameAndDate("マルコシオン", DateTime.now()),
              MarginWidget.margin8(),
              CheerSingleWidget.cheerContent("思ってもいないのに口に出してしまうことありますよね。でも反省できているだけですごいと思います。それが失礼なことだってわからない人もいます。気づけたあなたは大丈夫です！次お会いした時にはしっかり謝れるといいですね！応援してます！"),
              MarginWidget.margin32(),
              CheerSingleWidget.cheerPersonInfo(context),
            ],
          ),
        ),
      ),
    );
  }
}