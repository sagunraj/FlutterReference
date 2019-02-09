import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(home: SwitchApp()));

class SwitchApp extends StatefulWidget {
  _SwitchAppState createState() => _SwitchAppState();
}

class _SwitchAppState extends State<SwitchApp> {
  bool _value = false;
  String _text = "Switch has been turned off";
  void _onChangeSwitch(bool value){
    setState(() {
      _value = value;
    });

    value ? setState((){
      _text = "Switch has been turned on";
    }):_text = "Switch has been turned off";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Switch App")),
        body: Center(
          child: Column(
            children: <Widget>[
              Switch(value: _value,onChanged: _onChangeSwitch,),
              SwitchListTile(value: _value, onChanged: _onChangeSwitch,
              activeColor: Colors.red,
              subtitle: Text("Just push this switch"),
              title: Text("Are you ready to push this switch?"),),
              Text(_text)
            ],
          ),
        ),
    );
  }
}