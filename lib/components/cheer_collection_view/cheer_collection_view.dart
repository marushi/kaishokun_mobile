
import 'package:flutter/cupertino.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:kaishokunmobile/components/cheer_collection_view/cheer_collection_notifier.dart';
import 'package:kaishokunmobile/components/cheer_collection_view/cheer_collection_state.dart';
import 'package:kaishokunmobile/components/cheer_collection_view/cheer_collection_widget.dart';
import 'package:kaishokunmobile/configs/app_color.dart';

class CheerCollectionView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<CheerCollectionNotifier, CheerCollectionState>(
      create: (_) => CheerCollectionNotifier(),
      child: Container(
        color: AppColor.back,
        child: ListView.builder(
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return CheerCollectionWidget.cheerCollectionItem(index, context);
            }),
      ),
    );
  }
}