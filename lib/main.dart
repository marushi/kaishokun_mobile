import 'package:flutter/material.dart';
import 'package:kaishokunmobile/components/tab_bar_controller/tab_bar_controller.dart';

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
      },
    );
  }
}