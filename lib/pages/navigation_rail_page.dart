import 'package:flutter/material.dart';

class NavigationRailPage extends StatefulWidget {
  static const String id = "navigation_rail_page";

  const NavigationRailPage({Key? key}) : super(key: key);

  @override
  _NavigationRailPageState createState() => _NavigationRailPageState();
}

class _NavigationRailPageState extends State<NavigationRailPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Row(
        children: [
          NavigationRail(
            groupAlignment: 1,
            backgroundColor: Colors.blueGrey.shade800,
            leading: const CircleAvatar(
              foregroundImage: AssetImage("assets/images/Samuel.jpg"),
            ),
            destinations: const [
              NavigationRailDestination(
                  padding: EdgeInsets.only(top: 5, bottom: 100),
                  icon: Icon(Icons.tune),
                  selectedIcon: Icon(Icons.tune),
                  label: SizedBox.shrink()),
              NavigationRailDestination(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  icon: RotatedBox(
                      quarterTurns: 3,
                      child: SizedBox(
                        width: 150,
                        child: Text(
                          "Popular",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      )),
                  selectedIcon: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        "Popular",
                        style: TextStyle(
                            color: Colors.yellow,
                            decoration: TextDecoration.underline,
                            fontSize: 15),
                      )),
                  label: SizedBox.shrink()),
              NavigationRailDestination(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  icon: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        "Favourites",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )),
                  selectedIcon: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        "Favourites",
                        style: TextStyle(
                            color: Colors.yellow,
                            decoration: TextDecoration.underline,
                            fontSize: 15),
                      )),
                  label: SizedBox.shrink()),
              NavigationRailDestination(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  icon: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        "Inspiration",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )),
                  selectedIcon: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        "Inspiration",
                        style: TextStyle(
                            color: Colors.yellow,
                            decoration: TextDecoration.underline,
                            fontSize: 15),
                      )),
                  label: SizedBox.shrink()),
              NavigationRailDestination(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  icon: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        "All",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )),
                  selectedIcon: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        "All",
                        style: TextStyle(
                            color: Colors.yellow,
                            decoration: TextDecoration.underline,
                            fontSize: 15),
                      )),
                  label: SizedBox.shrink()),
            ],
            selectedIndex: _selectedIndex,
            onDestinationSelected: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
          Expanded(
              child: Container(
            child: Center(
                child: Text(
              "Navigation Rail",
              style: TextStyle(color: Colors.white),
            )),
          ))
        ],
      ),
    ));
  }
}
