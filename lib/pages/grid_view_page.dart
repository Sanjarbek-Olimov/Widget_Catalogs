import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  static const String id = "grid_view_page";

  const GridViewPage({Key? key}) : super(key: key);

  @override
  _GridViewPageState createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  // 1. Fields
  List list = [
    Colors.blueAccent,
    Colors.yellowAccent,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.redAccent
  ];
  List avatars = [
    "assets/images/img.png",
    "assets/images/img_1.png",
    "assets/images/img_2.png",
    "assets/images/img_3.png",
    "assets/images/img_4.png",
    "assets/images/img_5.png",
    "assets/images/img_6.png",
    "assets/images/img_7.png",
    "assets/images/Samuel.jpg"
  ];

  // 2. Function Logic

  // 3. Build
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Grid view"),
        backgroundColor: Colors.grey[800],
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, mainAxisSpacing: 15, childAspectRatio: 7 / 10),
        itemCount: avatars.length,
        itemBuilder: (context, index) {
          return elementOfTable(avatars[index], "User ${index + 1}", "");
        },
      ),
    ));
  }

  // 4. Function Widget
  Widget elementOfTable(String image, String name, String title) {
    return Card(
      color: Colors.white,
      child: Column(
        children: [
          ClipRRect(
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.cover,
              width: 60,
              height: 60,
            ),
            borderRadius: BorderRadius.circular(60),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
