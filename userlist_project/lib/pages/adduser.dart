import 'package:flutter/material.dart';
import './userlist.dart';
class AddUserPage extends StatefulWidget {
  // final Function addUser;
  // AddUserPage(this.addUser);
  _AddUserPageState createState() => _AddUserPageState();
}

class _LoginData {
  String name = '';
  String phone = '';
}

class _AddUserPageState extends State<AddUserPage> {
  Function addUser;
  // _AddUserPageState(this.addUser);
  List<Map<String, String>> userdata = [];

  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  _LoginData _data = new _LoginData();

  void submitAction() {
    _formKey.currentState.save();
    // userdata.add({'name': _data.name, 'phone': _data.phone});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>UserListPage(name:_data.name,phone:_data.phone)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Add a new user")),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Form(
              key: this._formKey,
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(10.0)),
                  TextFormField(
                    onSaved: (String value) {
                      this._data.name = value;
                    },
                    keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "Name",
                    border: OutlineInputBorder()
                  )),
                  Padding(padding: EdgeInsets.all(10.0)),
                  TextFormField(
                    onSaved: (String value) {
                      this._data.phone = value;
                    },
                    keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Phone number",
                    border: OutlineInputBorder()
                  )),
                  Center(child: RaisedButton(child: Text("Add User"), color: Theme.of(context).accentColor, textColor: Colors.white, onPressed: submitAction,),)
                ],
              )),
        ));
  }
}
