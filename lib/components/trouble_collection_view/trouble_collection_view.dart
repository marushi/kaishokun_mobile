
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:kaishokunmobile/components/trouble_collection_view/trouble_collection_notifier.dart';
import 'package:kaishokunmobile/components/trouble_collection_view/trouble_collection_state.dart';
import 'package:kaishokunmobile/components/trouble_collection_view/trouble_collection_widget.dart';
import 'package:kaishokunmobile/configs/app_color.dart';

class TroubleCollectionView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<TroubleCollectionNotifier, TroubleCollectionState>(
        create: (_) => TroubleCollectionNotifier(),
        child: Container(
          color: AppColor.back,
          child: ListView.builder(
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return TroubleCollectionWidget.troubleCollectionItem(index, context);
              }),
        ),
    );
  }
}
