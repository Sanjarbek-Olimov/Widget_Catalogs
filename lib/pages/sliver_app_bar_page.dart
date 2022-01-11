
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SliverAppBarPage extends StatefulWidget {
  static const String id = "sliver_app_bar_page";
  const SliverAppBarPage({Key? key}) : super(key: key);

  @override
  _SliverAppBarPageState createState() => _SliverAppBarPageState();
}

class _SliverAppBarPageState extends State<SliverAppBarPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            floating: true,
            snap: true,
            pinned: true,
            elevation: 50,
            backgroundColor: Colors.blueGrey.shade700,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text("Hotel"),
              background: Image(
                image: AssetImage("assets/images/hotel.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate(
              (context, index){
                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: ListTile(
                    title: Text("Hotel ${index+1}"),
                    subtitle: Text("Cost: \$${(index+1)*100+index+12}"),
                    trailing: Icon(Icons.phone, color: Colors.greenAccent,),
                  ),
                );
              },
            childCount: 50
          )
          )
        ],
      ),
    ));
  }
}
