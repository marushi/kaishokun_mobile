
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaishokunmobile/components/trouble_collection_view/trouble_collection_state.dart';
import 'package:kaishokunmobile/components/trouble_collection_view/trouble_collection_widget.dart';
import 'package:kaishokunmobile/configs/app_color.dart';
import 'package:kaishokunmobile/models/main/trouble.dart';
import 'package:provider/provider.dart';

class TroubleCollectionView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.back,
      child: ListView.builder(
          itemCount: context.select<TroubleCollectionState, int>((state) => state.troubles.length),
          itemBuilder: (BuildContext context, int index) {
            return Builder(builder: (context) {
              return TroubleCollectionWidget.troubleCollectionItem(index, context,context.select<TroubleCollectionState,Trouble>((state) => state.troubles[index]));
            });
          }),
    );
  }
}
