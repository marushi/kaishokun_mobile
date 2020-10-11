
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:kaishokunmobile/common/margin_widget.dart';
import 'package:kaishokunmobile/components/trouble_single_view/trouble_single_widget.dart';
import 'package:kaishokunmobile/configs/app_color.dart';
import 'trouble_single_state.dart';
import 'trouble_single_notifier.dart';

class TroubleSingleView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<TroubleSingleNotifier,TroubleSingleState>(
      create: (_) => TroubleSingleNotifier(),
      child: Scaffold(
        backgroundColor: AppColor.back,
        appBar: TroubleSingleWidget.troubleSingleAppBar(context),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            color: AppColor.surface,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                TroubleSingleWidget.troubleTitle("お酒がやめられない"),
                MarginWidget.margin8(),
                TroubleSingleWidget.troubleLevel(4),
                TroubleSingleWidget.penName("レモンサワー"),
                MarginWidget.margin16(),
                TroubleSingleWidget.contentText("きりっと男前、酒も果実もしっかり美味い。レモンサワーこだわり酒場9度。がすごくおいしくてやめられない。隣に置いてあるキレイキレイハンドソープすら美味しくおつまみにできそうなほど美味しい。"),
                MarginWidget.margin64(),
                TroubleSingleWidget.cheerMessage(),
                MarginWidget.margin16(),
                TroubleSingleWidget.cheerPanName(),
                MarginWidget.margin64(),
                TroubleSingleWidget.cheerBottomButton(context),
                MarginWidget.margin32(),
              ],
            ),
          ),
        )
      ),
    );
  }
}