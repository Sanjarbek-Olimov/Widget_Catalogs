import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogPage extends StatefulWidget {
  static const String id = "dialog_page";

  const DialogPage({Key? key}) : super(key: key);

  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {

  void display(){
    if(Platform.isIOS){
      _iOsDialog();
    }
    if(Platform.isAndroid){
      _androidDialog();
    }
  }

  void _iOsDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text("Log out"),
            content: Text("Are you sure you want to log out?"),
            actions: [
              CupertinoDialogAction(
                isDefaultAction: true,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Cancel"),
              ),
              CupertinoDialogAction(
                isDefaultAction: true,
                onPressed: () {},
                child: Text("Confirm"),
              ),
            ],
          );
        });
  }

  void _androidDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Log out"),
            content: Text("Are you sure you want to log out?"),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Cancel")),
              TextButton(onPressed: () {}, child: Text("Confirm")),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: (){
                Scaffold.of(context).openDrawer();
              },
            );
          }
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              shape: StadiumBorder(),
              height: 50,
              minWidth: 200,
              onPressed: _androidDialog,
              child: Text(
                "Android Dialog",
                style: TextStyle(fontSize: 20),
              ),
              textColor: Colors.white,
              color: Colors.blueAccent,
            ),
            SizedBox(height: 10,),
            MaterialButton(
              shape: StadiumBorder(),
              height: 50,
              minWidth: 200,
              onPressed: _iOsDialog,
              child: Text(
                "iOs Dialog",
                style: TextStyle(fontSize: 20),
              ),
              textColor: Colors.white,
              color: Colors.blueAccent,
            ),
            SizedBox(height: 10,),
            MaterialButton(
              shape: StadiumBorder(),
              height: 50,
              minWidth: 200,
              onPressed: display,
              child: Text(
                "Platform Dialog",
                style: TextStyle(fontSize: 20),
              ),
              textColor: Colors.white,
              color: Colors.blueAccent,
            ),

          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("Fullname", style: TextStyle(color: Colors.white, fontSize: 20),),
                SizedBox(height: 10,),
                Text("email@bamboo.com", style: TextStyle(color: Colors.white),)
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.grey
            ),),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: (){},
            ),
          ],
        ),
      ),
    );
  }
}
