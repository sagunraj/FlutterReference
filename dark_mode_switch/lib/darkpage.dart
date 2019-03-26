import 'package:flutter/material.dart';

class DarkPage extends StatelessWidget {
  bool _darkMode;
  Function _switchMode;
  DarkPage(this._darkMode, this._switchMode);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dark Theme App"),),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(child:
            Text("Welcome to the applicaton", ),
            padding: EdgeInsets.only(top: 10.0),),
            Divider(),
            SwitchListTile(title: Text("Tap here to switch color modes."), value: _darkMode, onChanged:(bool value){_switchMode(value);})
          ],
        ),
      )
    );
  }
}