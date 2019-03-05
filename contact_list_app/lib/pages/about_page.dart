import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About"),),
      body:Center(
        child: Text("Created by Sagun Raj Lage.", style: TextStyle(fontSize: 14.0),)
      )
    );
  }
}