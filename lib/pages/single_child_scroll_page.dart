import 'package:flutter/material.dart';

class SingleChildScrollPage extends StatefulWidget {
  static const String id = "single_child_scroll_page";
  const SingleChildScrollPage({Key? key}) : super(key: key);

  @override
  _SingleChildScrollPageState createState() => _SingleChildScrollPageState();
}

class _SingleChildScrollPageState extends State<SingleChildScrollPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        
        child: Column(
          children: [
            Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              color: Colors.pink,
            ),
            Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              color: Colors.greenAccent,
            ),
            Container(
              height: 400,
              width: MediaQuery.of(context).size.width,
              color: Colors.yellowAccent,
            ),
          ],
        ),
      ),
    );
  }
}
