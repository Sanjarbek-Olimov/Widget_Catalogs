import 'package:flutter/material.dart';
import 'package:mywidgecatalog_less6/pages/dialog_page.dart';
import 'package:mywidgecatalog_less6/pages/grid_view_page.dart';
import 'package:mywidgecatalog_less6/pages/home_page.dart';
import 'package:mywidgecatalog_less6/pages/list_view_page.dart';
import 'package:mywidgecatalog_less6/pages/page_view_page.dart';
import 'package:mywidgecatalog_less6/pages/single_child_scroll_page.dart';

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
      },
    );
  }
}