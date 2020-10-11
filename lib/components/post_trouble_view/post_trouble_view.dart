
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:kaishokunmobile/components/post_trouble_view/post_trouble_notifier.dart';
import 'package:kaishokunmobile/components/post_trouble_view/post_trouble_state.dart';
import 'package:kaishokunmobile/components/post_trouble_view/post_trouble_widget.dart';

class PostTroubleView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<PostTroubleNotifier,PostTroubleState>(
      create: (_) => PostTroubleNotifier(),
      child: Scaffold(
        appBar: PostTroubleWidget.postTroubleAppBar(context),
        body: Container(),
      ),
    );
  }
}