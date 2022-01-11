import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class SpeedDialPage extends StatefulWidget {
  static const String id = "speed_dial_page";

  const SpeedDialPage({Key? key}) : super(key: key);

  @override
  _SpeedDialPageState createState() => _SpeedDialPageState();
}

class _SpeedDialPageState extends State<SpeedDialPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Center(
          child: Text('Speed Dial')
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: IconThemeData(size: 22),
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        onOpen: () => print('Speed dial opened'),
        onClose: () => print('Speed dial closed'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 15,
        spaceBetweenChildren: 10,
        children: [
          SpeedDialChild(
              child: Icon(Icons.share),
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              label: "Share",
              labelStyle: TextStyle(fontSize: 18),
            onTap: () => print("Shared"),
          ),
          SpeedDialChild(
              child: Icon(Icons.edit),
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              label: "Edit",
              onTap: () => print("Edited"),
              labelStyle: TextStyle(fontSize: 18)
          ),
          SpeedDialChild(
            child: Icon(Icons.update),
            labelStyle: TextStyle(fontSize: 18),
            onTap: () => print("Updated"),
            label: "Update",
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
          ),
        ],
      ),
    ));
  }
}
