
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:kaishokunmobile/components/tab_bar_controller/tab_bar_widget.dart';
import 'tab_bar_state.dart';
import 'tab_bar_notifier.dart';

class TabBarController extends StatefulWidget {
  @override
  _TabBarControllerState createState() => _TabBarControllerState();
}

class _TabBarControllerState extends State<TabBarController> with SingleTickerProviderStateMixin {
  int _selectIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<TabBarNotifier, TabBarState>(
      create: (_) => TabBarNotifier(),
      child: Scaffold(
        appBar: TabBarWidget.tabBarAppBar(false, _selectIndex, context),
        body: TabBarWidget.tabBarBody(_selectIndex),
        floatingActionButton: TabBarWidget.floatingButton(_selectIndex,context),
        bottomNavigationBar: TabBarWidget.bottomNavigationBar(_selectIndex,tapBottomNavigationItem),
      ),
    );
  }

  void tapBottomNavigationItem(int pageIndex) {
    _selectIndex = pageIndex;
    setState(() {});
  }
}