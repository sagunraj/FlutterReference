import 'package:flutter/material.dart';
import 'darkpage.dart';
void main() => runApp(MainPage());

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool _darkMode = false;
  Brightness _mode = Brightness.light;
  void _switchMode(bool value){
    setState(() {
    _darkMode = value;      
    });
    if(_darkMode){
      setState(() {
        _mode = Brightness.dark;
      });
    }
    else {
      setState(() {
        _mode = Brightness.light;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Dark App", home: DarkPage(_darkMode, _switchMode), theme: ThemeData(
      brightness: _mode
    ),);
  }
}