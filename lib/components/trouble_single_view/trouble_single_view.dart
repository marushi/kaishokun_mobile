
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:kaishokunmobile/api/repository/repository.dart';
import 'package:kaishokunmobile/common/margin_widget.dart';
import 'package:kaishokunmobile/components/trouble_single_view/trouble_single_widget.dart';
import 'package:kaishokunmobile/configs/app_color.dart';
import 'package:kaishokunmobile/configs/app_text_style.dart';
import 'package:kaishokunmobile/models/main/post_cheer.dart';
import 'package:kaishokunmobile/models/main/trouble.dart';
import 'package:kaishokunmobile/models/main/user.dart';
import 'package:provider/provider.dart';
import 'trouble_single_state.dart';
import 'trouble_single_notifier.dart';

class TroubleSingleView extends StatelessWidget {
  final TextEditingController _cheerPenNameController = TextEditingController();
  final TextEditingController _cheerContentController = TextEditingController();
  final Trouble trouble;

  TroubleSingleView({
    this.trouble,
  });

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => Repository(),
      child: StateNotifierProvider<TroubleSingleNotifier,TroubleSingleState>(
          create: (_) => TroubleSingleNotifier(),
          builder: (context,child) {
            return Scaffold(
                backgroundColor: AppColor.back,
                appBar: TroubleSingleWidget.troubleSingleAppBar(context),
                body: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.all(16),
                    padding: EdgeInsets.all(16),
                    color: AppColor.surface,
                    child: Builder(builder: (context) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          TroubleSingleWidget.troubleTitle(trouble.title),
                          MarginWidget.margin8(),
                          TroubleSingleWidget.troubleLevel(trouble.trouble_level),
                          TroubleSingleWidget.penName(trouble.username),
                          MarginWidget.margin16(),
                          TroubleSingleWidget.contentText(trouble.content),
                          MarginWidget.margin64(),
                          TroubleSingleWidget.cheerMessage(_cheerContentController),
                          MarginWidget.margin16(),
                          TroubleSingleWidget.cheerPanName(_cheerPenNameController),
                          MarginWidget.margin64(),
                          sendButton(context),
                          MarginWidget.margin32(),
                        ],
                      );
                    }),
                  ),
                )
            );
          }
      ),
    );
  }

  Widget sendButton(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.expand(height: 40),
      child: RaisedButton(
        shape: StadiumBorder(),
        color: AppColor.green,
        onPressed: () {
          sendCheerMessage(context);
        },
        child: Text("入力完了",style: AppTextStyle.surface17Bold,),
      ),
    );
  }

  void sendCheerMessage(BuildContext context) {
    PostCheer cheer = cheerData();

    context.read<TroubleSingleNotifier>().postCheer(cheer).then((value) => {
      Navigator.pop(context)
    });
  }

  PostCheer cheerData() {
    String username = _cheerPenNameController.text;
    String content = _cheerContentController.text;
    String twitter = User().twitterId;
    String instagram = User().instagramId;

    PostCheer cheer = PostCheer();
    cheer.username = username;
    cheer.content = content;
    cheer.twitter = twitter;
    cheer.instagram = instagram;
    cheer.trouble_id = trouble.id.toString();

    return cheer;
  }
}