
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:kaishokunmobile/api/repository/repository.dart';
import 'package:kaishokunmobile/components/cheer_collection_view/cheer_collection_notifier.dart';
import 'package:kaishokunmobile/components/cheer_collection_view/cheer_collection_state.dart';
import 'package:kaishokunmobile/components/tab_bar_controller/tab_bar_widget.dart';
import 'package:kaishokunmobile/components/trouble_collection_view/trouble_collection_controller.dart';
import 'package:kaishokunmobile/components/trouble_collection_view/trouble_collection_state.dart';
import 'package:kaishokunmobile/configs/app_image.dart';
import 'package:kaishokunmobile/models/main/user.dart';
import 'package:provider/provider.dart';

class TabBarController extends StatefulWidget {
  @override
  _TabBarControllerState createState() => _TabBarControllerState();
}

class _TabBarControllerState extends State<TabBarController> with SingleTickerProviderStateMixin {
  int _selectIndex = 0;

  @override
  void initState() {
    super.initState();
    User().initialize();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
        Provider(create: (_) => Repository(),),
          StateNotifierProvider<CheerCollectionNotifier,CheerCollectionState>(
            create: (_) => CheerCollectionNotifier(),
          ),
          StateNotifierProvider<TroubleCollectionController, TroubleCollectionState>(
            create: (_) => TroubleCollectionController(),
            builder: (context,child) {
              return Scaffold(
                appBar: TabBarWidget.tabBarAppBar(false, _selectIndex, context,_appBarAction(_selectIndex) ),
                body: TabBarWidget.tabBarBody(_selectIndex),
                floatingActionButton: TabBarWidget.floatingButton(_selectIndex,context),
                bottomNavigationBar: TabBarWidget.bottomNavigationBar(_selectIndex,tapBottomNavigationItem),
              );
              },
          ),
        ],
    );
  }


  Widget _appBarAction(int index) {
    if (index == 0) {
      return Builder(builder: (context) {
        return IconButton(
          icon: AppImage.update,
          onPressed: () async {
            print("DEBUG_MESSAGE: update trouble data");
            await context.read<TroubleCollectionController>().fetchTroubleData();
          },
        );
      });
    }else{
      return Container();
    }
  }

  void tapBottomNavigationItem(int pageIndex) {
    _selectIndex = pageIndex;
    setState(() {});
  }
}