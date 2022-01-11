import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  static const String id = "input_page";

  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  bool isHidden = true;
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: Text("TextFields"),
      ),
          body: Padding(
            padding: EdgeInsets.all(25),
            child: Column(
              children: [
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white
                  ),
                  child: TextField(
                    controller: _controller,
                    obscureText: isHidden,
                    obscuringCharacter: '*',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                    keyboardType: TextInputType.url,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.black, fontSize: 15),
                      prefixIcon: Icon(Icons.lock, color: Colors.grey,),
                      suffixIcon: IconButton(
                        icon: Icon(isHidden?Icons.visibility:Icons.visibility_off, color: Colors.grey,),
                        onPressed: (){
                          setState(() {
                            isHidden = !isHidden;
                          });
                        },
                      )
                    ),
                  ),
                )
              ],
            ),
          ),
    ));
  }
}
