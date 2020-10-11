import 'package:flutter/material.dart';
import 'package:kaishokunmobile/components/cheer_single_view/cheer_single_view.dart';
import 'package:kaishokunmobile/components/developer_view/developer_view.dart';
import 'package:kaishokunmobile/components/post_trouble_view/post_trouble_view.dart';
import 'package:kaishokunmobile/components/setting_view/setting_view.dart';
import 'package:kaishokunmobile/components/tab_bar_controller/tab_bar_controller.dart';
import 'package:kaishokunmobile/components/trouble_single_view/trouble_single_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KaishoKun',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "/",
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => TabBarController(),
        '/trouble_single': (BuildContext context) => TroubleSingleView(),
        '/post_trouble': (BuildContext context) => PostTroubleView(),
        '/cheer_single': (BuildContext context) => CheerSingleView(),
        '/setting': (BuildContext context) => SettingView(),
        '/developer':(BuildContext context) => DeveloperView(),
      },
    );
  }
}