import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  static const String id = "list_view_page";
  const ListViewPage({Key? key}) : super(key: key);

  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {

  List list = [Colors.blueAccent, Colors.yellowAccent, Colors.greenAccent, Colors.purpleAccent, Colors.redAccent];
  List avatars = [
    "assets/images/img.png",
    "assets/images/img_1.png",
    "assets/images/img_2.png",
    "assets/images/img_3.png",
    "assets/images/img_4.png",
    "assets/images/img_5.png",
    "assets/images/img_6.png",
    "assets/images/img_7.png",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
            itemCount: avatars.length,
            itemBuilder: (context, index){
          return itemOfContact(index);
        }),
      ),
    );
  }

  Widget itemOfContact(int index){
    return ListTile(
      leading: ClipRRect(
        child: Image(image: AssetImage(avatars[index]),
        fit: BoxFit.cover,
        height: 60,
        width: 60,),
        borderRadius: BorderRadius.circular(60),
      ),
      title: Text("User $index"),
      subtitle: Text("${DateTime.now().hour >=10 ? DateTime.now().hour.toString():"0"+DateTime.now().hour.toString()}:${DateTime.now().minute}"),
      trailing: Icon(Icons.send),
    );
  }

  Widget _itemList(int index){
    return Container(
      height: 250,
      width: MediaQuery.of(context).size.width,
      color: list[index],
    );
  }
}
