import 'package:flutter/material.dart';

class ButtonsPage extends StatefulWidget {
  static const String id = "buttons_page";
  const ButtonsPage({Key? key}) : super(key: key);

  @override
  _ButtonsPageState createState() => _ButtonsPageState();
}

class _ButtonsPageState extends State<ButtonsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: (){
                print("Button clicked");
              },
              onLongPress: (){
                print("Long pressed");
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.purpleAccent,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)
                  )
                ),
                child: Text("Sign up", style: TextStyle(color: Colors.white, fontSize: 18),),
              )
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: InkWell(
              onTap: (){
                print("Sing in pressed");
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 250,
                decoration: const BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25)
                    )
                ),
                child: Text("Sign in", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
