import 'package:flutter/material.dart';
import 'package:mywidgecatalog_less6/pages/animations/animation_class.dart';
import 'package:mywidgecatalog_less6/pages/animations/animation_page.dart';
import 'package:mywidgecatalog_less6/pages/buttons_page.dart';
import 'package:mywidgecatalog_less6/pages/container_page.dart';
import 'package:mywidgecatalog_less6/pages/dialog_page.dart';
import 'package:mywidgecatalog_less6/pages/fancy_bottom_bar_page.dart';
import 'package:mywidgecatalog_less6/pages/grid_view_page.dart';
import 'package:mywidgecatalog_less6/pages/home_page.dart';
import 'package:mywidgecatalog_less6/pages/input_page.dart';
import 'package:mywidgecatalog_less6/pages/list_view_page.dart';
import 'package:mywidgecatalog_less6/pages/navigation_rail_page.dart';
import 'package:mywidgecatalog_less6/pages/page_view_page.dart';
import 'package:mywidgecatalog_less6/pages/single_child_scroll_page.dart';
import 'package:mywidgecatalog_less6/pages/sliver_app_bar_page.dart';
import 'package:mywidgecatalog_less6/pages/speed_dial_page.dart';
import 'package:mywidgecatalog_less6/pages/tab_bar_view_page.dart';
import 'package:mywidgecatalog_less6/pages/text_form_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        HomePage.id: (context) =>HomePage(),
        DialogPage.id: (context) =>DialogPage(),
        SingleChildScrollPage.id: (context) => SingleChildScrollPage(),
        ListViewPage.id: (context) => ListViewPage(),
        GridViewPage.id: (context)=> GridViewPage(),
        PageViewPage.id: (context)=> PageViewPage(),
        TabBarViewPage.id: (context) => TabBarViewPage(),
        ContainerPage.id: (context) => ContainerPage(),
        ButtonsPage.id: (context) => ButtonsPage(),
        InputPage.id: (context) => InputPage(),
        TextFormPage.id: (context) => TextFormPage(),
        SpeedDialPage.id: (context) => SpeedDialPage(),
        FancyBottomBarPage.id: (context) => FancyBottomBarPage(),
        SliverAppBarPage.id: (context) => SliverAppBarPage(),
        NavigationRailPage.id: (context) => NavigationRailPage(),
        AnimationPage.id: (context) => AnimationPage(),
      },
    );
  }
}