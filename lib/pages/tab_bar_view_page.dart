import 'package:flutter/material.dart';

class TabBarViewPage extends StatefulWidget {
  static const String id = "tab_bar_view_page";

  const TabBarViewPage({Key? key}) : super(key: key);

  @override
  _TabBarViewPageState createState() => _TabBarViewPageState();
}

class _TabBarViewPageState extends State<TabBarViewPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.blueGrey.shade700,
                centerTitle: true,
                title: const Text("Tab Bar View"),
                bottom: const TabBar(
                  tabs: [
                    Tab(icon: Icon(Icons.home_outlined), text: 'Home',),
                    Tab(icon: Icon(Icons.search), text: 'Search',),
                    Tab(icon: Icon(Icons.account_circle_outlined), text: 'Profile',),
                  ],
                ),
              ),
              bottomNavigationBar: Container(
                color: Colors.blue,
                child: const TabBar(
                  indicatorColor: Colors.black,
                  labelColor: Colors.white,
                  tabs: [
                    Tab(icon: Icon(Icons.home_outlined), text: 'Home',),
                    Tab(icon: Icon(Icons.search), text: 'Search',),
                    Tab(icon: Icon(Icons.account_circle_outlined), text: 'Profile',),
                  ],
                ),
              ),
              body: TabBarView(children: [
                Container(
                  color: Colors.pinkAccent,
                ),
                Container(
                  color: Colors.lightBlueAccent,
                ),
                Container(
                  color: Colors.greenAccent,
                ),
              ],),
            )
        ));
  }
}
