import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: myApplication()));

/* class myApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text("Title text"),
        ),
        body: Container(
          child: Text("Body text"),
        ));
  }
}
 */

class myApplication extends StatefulWidget {
  @override
  _myApplicationState createState() => _myApplicationState();
}

class _myApplicationState extends State<myApplication> {
  String name = "Ram";
  void _onClick(){
    name=="Ram"?setState(() {
      name = "Button is clicked";
    }):setState((){
      name = "Ram";
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("App Title"),),
      body: Container(
        child: Column(
          children: <Widget>[
            Text(name),
            RaisedButton(onPressed: _onClick, child: Text("Click"),),
            FlatButton(onPressed: _onClick, child: Text("Flat Button")),
            IconButton(onPressed: _onClick, icon: Icon(Icons.add),)
          ],
        ),
      )
    );
  }
}