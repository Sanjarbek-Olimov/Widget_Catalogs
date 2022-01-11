import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

class FancyBottomBarPage extends StatefulWidget {
  static const String id = "fancy_bottom_bar_page";
  const FancyBottomBarPage({Key? key}) : super(key: key);

  @override
  _FancyBottomBarPageState createState() => _FancyBottomBarPageState();
}

class _FancyBottomBarPageState extends State<FancyBottomBarPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation"),
        centerTitle: true,
      ),
      body: Center(child: Text("Home")),
      bottomNavigationBar: FancyBottomNavigation(
        circleColor: Colors.blueAccent,
        textColor: Colors.black,
        barBackgroundColor: Colors.white,
        inactiveIconColor: Colors.blueAccent,
        activeIconColor: Colors.white,
        tabs: [
          TabData(iconData: Icons.home, title: "Home"),
          TabData(iconData: Icons.search, title: "Search"),
          TabData(iconData: Icons.account_circle, title: "Profile"),
        ],
        onTabChangedListener: (position){
          print(position);
        },
      ),
    ));
  }
}
