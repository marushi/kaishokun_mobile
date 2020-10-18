
import 'package:flutter/cupertino.dart';
import 'package:kaishokunmobile/components/cheer_collection_view/cheer_collection_state.dart';
import 'package:kaishokunmobile/components/cheer_collection_view/cheer_collection_widget.dart';
import 'package:kaishokunmobile/configs/app_color.dart';
import 'package:kaishokunmobile/models/main/cheer.dart';
import 'package:provider/provider.dart';

class CheerCollectionView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.back,
      child: ListView.builder(
          itemCount: context.select<CheerCollectionState, int>((state) => state.cheers.length),
          itemBuilder: (BuildContext context, int index) {
            return Builder(builder: (context) {
              return CheerCollectionWidget.cheerCollectionItem(index, context,context.select<CheerCollectionState,Cheer>((state) => state.cheers[index]));
            });
          }),
    );
  }
}