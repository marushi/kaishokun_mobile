
import 'package:flutter/cupertino.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:kaishokunmobile/components/menu_view/menu_notifier.dart';
import 'package:kaishokunmobile/components/menu_view/menu_state.dart';
import 'package:kaishokunmobile/components/menu_view/menu_widget.dart';
import 'package:kaishokunmobile/configs/app_color.dart';

class MenuView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<MenuNotifier,MenuState>(
      create: (_) => MenuNotifier(),
      child: Container(
        color: AppColor.back,
        child: ListView.builder(
            itemCount: MenuWidget.menuTitles.length,
            itemBuilder: (BuildContext context, int index) {
              return MenuWidget.menuViewItem(context,index);
            }),
      ),
    );
  }
}