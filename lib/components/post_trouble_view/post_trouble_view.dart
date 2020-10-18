
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:kaishokunmobile/common/margin_widget.dart';
import 'package:kaishokunmobile/common/my_simple_button.dart';
import 'package:kaishokunmobile/components/post_trouble_view/post_trouble_notifier.dart';
import 'package:kaishokunmobile/components/post_trouble_view/post_trouble_state.dart';
import 'package:kaishokunmobile/components/post_trouble_view/post_trouble_widget.dart';
import 'package:kaishokunmobile/configs/app_color.dart';
import 'package:kaishokunmobile/models/enum/post_trouble_type.dart';
import 'package:kaishokunmobile/models/main/post_trouble.dart';
import 'package:kaishokunmobile/models/main/user.dart';
import 'package:provider/provider.dart';

class PostTroubleView extends StatelessWidget {
  final TextEditingController _troubleTitleController = TextEditingController();
  final TextEditingController _troublePenNameController = TextEditingController();
  final TextEditingController _troubleContentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<PostTroubleNotifier,PostTroubleState>(
      create: (_) => PostTroubleNotifier(),
      builder: (context,child) {
        return Scaffold(
          backgroundColor: AppColor.back,
          appBar: PostTroubleWidget.postTroubleAppBar(context),
          body: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(16),
              color: AppColor.surface,
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MarginWidget.margin16(),
                  PostTroubleWidget.postTroubleSection(PostTroubleType.title,_troubleTitleController),
                  MarginWidget.margin16(),
                  PostTroubleWidget.postTroubleSection(PostTroubleType.penName,_troublePenNameController),
                  MarginWidget.margin16(),
                  PostTroubleWidget.postTroubleSection(PostTroubleType.content,_troubleContentController),
                  MarginWidget.margin16(),
                  PostTroubleWidget.postTroubleLevel(),
                  MarginWidget.margin64(),
                  postButton(context),
                  MarginWidget.margin32(),
                ],
              ),
            ),
          ),
        );
      }
    );
  }

  Widget postButton(BuildContext context) {
    final state = Provider.of<PostTroubleState>(context);

    return Builder(builder: (context) {
      return MySimpleButton(
        title: "入力完了",
        onPressed: () {
          postTrouble(context,state.troubleLevel);
        },
      );
    });
  }

  void postTrouble(BuildContext context,int level) {
    PostTrouble postTrouble = PostTrouble();

    postTrouble.title = _troubleTitleController.text;
    postTrouble.content = _troubleContentController.text;
    postTrouble.username = _troublePenNameController.text;
    postTrouble.uuid = User().uuid;
    postTrouble.trouble_level = 3.toString();

    context.read<PostTroubleNotifier>().postTrouble(postTrouble).then((value) => {
      Navigator.pop(context),
    });
  }
}