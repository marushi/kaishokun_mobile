
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaishokunmobile/common/my_widget.dart';
import 'package:kaishokunmobile/components/cheer_collection_view/cheer_collection_view.dart';
import 'package:kaishokunmobile/configs/app_color.dart';
import 'package:kaishokunmobile/configs/app_image.dart';
import 'package:kaishokunmobile/configs/app_text_style.dart';
import 'package:kaishokunmobile/helpers/convert.dart';
import 'package:kaishokunmobile/models/enum/app_bar_type.dart';
import 'package:kaishokunmobile/models/enum/bottom_navigation_type.dart';

class TabBarWidget {
  static List<BottomNavigationBarItem> _bottomNavigationItemList = [
    BottomNavigationBarItem(
      title: bottomNavText(0),
      icon: AppImage.megaphoneDisable,
      activeIcon: AppImage.megaphone,
    ),
    BottomNavigationBarItem(
      title: bottomNavText(1),
      icon: AppImage.megaphoneDisable,
      activeIcon: AppImage.megaphone,
    ),
    BottomNavigationBarItem(
      title: bottomNavText(2),
      icon: AppImage.megaphoneDisable,
      activeIcon: AppImage.megaphone,
    ),
  ];

  static AppBar tabBarAppBar(bool canPop,int pageIndex,BuildContext context) {
    AppBarType titleEnum = Convert.appbarTitleEnum(pageIndex);
    String title = Convert.appBarTitle(titleEnum);
    Widget action = _appBarAction(titleEnum);

    return MyWidget.simpleAppBar(canPop, title, action, context);
  }

  static Widget tabBarBody(int pageIndex) {
    List<Widget> pages = [
      CheerCollectionView(),
      Container(),
      Container(),
    ];
    return pages[pageIndex];
  }

  static CupertinoTabBar bottomNavigationBar(int pageIndex,Function(int) tapAction) {
    return CupertinoTabBar(
      items: _bottomNavigationItemList,
      currentIndex: pageIndex,
      onTap: tapAction,
      activeColor: AppColor.onSurfaceStrong,
      inactiveColor: AppColor.disabled,
    );
  }

  static Widget floatingButton(int pageIndex) {
    if (pageIndex == 0) {
      return FloatingActionButton(
        backgroundColor: AppColor.green,
        child: Text("新規"),
        onPressed: () {

        },
      );
    }
    return Container();
  }

  static Widget _appBarAction(AppBarType titleEnum) {
    if (titleEnum == AppBarType.trouble) {
      return IconButton(
        icon: AppImage.update,
        onPressed: () {
          _updateDisplayTrouble();
        },
      );
    }
    return Container();
  }

  static void _updateDisplayTrouble() {

  }

  static Widget bottomNavText(int pageIndex) {
    List<BottomNavigationType> list = [BottomNavigationType.trouble,BottomNavigationType.cheer,BottomNavigationType.menu];
    String title = Convert.bottomNavTitle(list[pageIndex]);

    return Text(
      title,
      style: AppTextStyle.bottomNav,
    );
  }
}