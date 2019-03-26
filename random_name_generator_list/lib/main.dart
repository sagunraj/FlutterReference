import 'package:flutter/material.dart';
import 'randomwords.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Random Name Generator List",
      home: RandomWords(),
      theme:ThemeData(
        primaryColor: Colors.white,
      )
    );
  }
}