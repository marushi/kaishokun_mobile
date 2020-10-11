
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:kaishokunmobile/components/developer_view/developer_notifier.dart';
import 'package:kaishokunmobile/components/developer_view/developer_state.dart';
import 'package:kaishokunmobile/components/developer_view/developer_widget.dart';
import 'package:kaishokunmobile/configs/app_color.dart';
import 'package:kaishokunmobile/models/enum/developer_type.dart';

class DeveloperView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<DeveloperNotifier,DeveloperState>(
      create: (_) => DeveloperNotifier(),
      child: Scaffold(
        backgroundColor: AppColor.back,
        appBar: DeveloperWidget.developerAppBar(context),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            DeveloperWidget.developerWidget(context, DeveloperType.frontEnd),
            DeveloperWidget.developerWidget(context, DeveloperType.backEnd),
          ],
        ),
      ),
    );
  }
}