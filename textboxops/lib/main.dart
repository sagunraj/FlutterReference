import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(home: TextBoxApp(),));

class TextBoxApp extends StatefulWidget {
  _TextBoxAppState createState() => _TextBoxAppState();
}

class _TextBoxAppState extends State<TextBoxApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text Box App"),),
      body: Container(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: "Input anything here...",
                icon: Icon(Icons.people),
              ),
              keyboardType: TextInputType.number
            ),
          ],
        ),
      ),
    );
  }
}