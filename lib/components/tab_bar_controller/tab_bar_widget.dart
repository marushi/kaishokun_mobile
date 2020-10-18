
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaishokunmobile/common/my_widget.dart';
import 'package:kaishokunmobile/components/cheer_collection_view/cheer_collection_view.dart';
import 'package:kaishokunmobile/components/menu_view/menu_view.dart';
import 'package:kaishokunmobile/components/trouble_collection_view/trouble_collection_view.dart';
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
      icon: AppImage.bubbleDisable,
      activeIcon: AppImage.bubble,
    ),
    BottomNavigationBarItem(
      title: bottomNavText(1),
      icon: AppImage.megaphoneDisable,
      activeIcon: AppImage.megaphone,
    ),
    BottomNavigationBarItem(
      title: bottomNavText(2),
      icon: AppImage.menuDisable,
      activeIcon: AppImage.menu,
    ),
  ];

  static AppBar tabBarAppBar(bool canPop,int pageIndex,BuildContext context,Widget action) {
    AppBarType titleEnum = Convert.appbarTitleEnum(pageIndex);
    String title = Convert.appBarTitle(titleEnum);
    Widget updateButton = action;

    return MyWidget.simpleAppBar(canPop, title, updateButton, context);
  }

  static Widget tabBarBody(int pageIndex) {
    List<Widget> pages = [
      TroubleCollectionView(),
      CheerCollectionView(),
      MenuView(),
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

  static Widget floatingButton(int pageIndex,BuildContext context) {
    if (pageIndex == 0) {
      return FloatingActionButton(
        backgroundColor: AppColor.green,
        child: Padding(padding: EdgeInsets.all(16),child: AppImage.edit,),
        onPressed: () {
          Navigator.pushNamed(context, '/post_trouble');
        },
      );
    }
    return Container();
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