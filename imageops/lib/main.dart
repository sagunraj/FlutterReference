import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(home: ImageApp()));

class ImageApp extends StatefulWidget {
  _ImageAppState createState() => _ImageAppState();
}

class _ImageAppState extends State<ImageApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
         title: Text("Image App")
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Image.asset('img/img.jpg'),
              Text("Image")
            ],
          ),
        )
    );
  }
}