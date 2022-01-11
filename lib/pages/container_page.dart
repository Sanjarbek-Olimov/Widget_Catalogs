import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget {
  static const String id = "container_page";

  const ContainerPage({Key? key}) : super(key: key);

  @override
  _ContainerPageState createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text("PDP"),
              centerTitle: true,
              backgroundColor: Colors.blueAccent,
            ),
            backgroundColor: Colors.grey,
            body: Center(
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage("assets/images/nature.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.blue,
                          blurRadius: 10,
                          spreadRadius: 3,
                          offset: Offset(0, 10)),
                    ]),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black.withOpacity(0.5),
                          Colors.black.withOpacity(0.35),
                          Colors.black.withOpacity(0.2),
                          Colors.black.withOpacity(0.1),
                        ]),
                  ),
                ),
              ),
            )));
  }
}
