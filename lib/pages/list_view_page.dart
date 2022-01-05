import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  static const String id = "list_view_page";
  const ListViewPage({Key? key}) : super(key: key);

  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {

  List list = [Colors.blueAccent, Colors.yellowAccent, Colors.greenAccent, Colors.purpleAccent, Colors.redAccent];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index){
        return Container(
          height: 250,
          width: MediaQuery.of(context).size.width,
          color: list[index],
        );
      }),
    );
  }
}
