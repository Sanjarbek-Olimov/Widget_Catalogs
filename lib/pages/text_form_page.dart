import 'package:flutter/material.dart';

class TextFormPage extends StatefulWidget {
  static const String id = "text_form_page";

  const TextFormPage({Key? key}) : super(key: key);

  @override
  _TextFormPageState createState() => _TextFormPageState();
}

class _TextFormPageState extends State<TextFormPage> {
  final _formKey = GlobalKey<FormState>();
  String? _email, _password;

  _doSignIn(){
    if(_formKey.currentState!.validate()){
      _formKey.currentState!.save();
      print("Welcome");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Text Form Field"),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: "Email",
                ),
                validator: (input)=> !input!.contains('@')?'Please enter a valid email':null,
                onSaved: (input) => _email=input,
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            child: TextFormField(
              decoration: const InputDecoration(labelText: 'Password'),
              validator: (input) => input!.length<6?"Must be at least 6 characters":null,
              onSaved: (input) => _password = input,
              obscureText: true,
            ),),
            MaterialButton(onPressed: _doSignIn,child: const Text("Sign In", style: TextStyle(color: Colors.white),), color: Colors.blue,)
          ],
        ),
      ),
    ));
  }
}
