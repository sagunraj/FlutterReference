import 'package:flutter/material.dart';
import 'dart:async';

class AddNewContactPage extends StatefulWidget {
  Function _addContact;
  AddNewContactPage(this._addContact);
  @override
  _AddNewContactPageState createState() => _AddNewContactPageState();
}

class _AddNewContactPageState extends State<AddNewContactPage> {
  String nameValue = '';
  String phoneValue = '';
  Timer _timer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Add new contact"),
        ),
        body: Builder(
            builder: (context) => ListView(
                  padding: EdgeInsets.all(10.0),
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10.0),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: "Name"),
                      onChanged: (String value) {
                        setState(() {
                          nameValue = value;
                        });
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Phone number"),
                      keyboardType: TextInputType.phone,
                      onChanged: (String value) {
                        setState(() {
                          phoneValue = value;
                        });
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                    ),
                    RaisedButton(
                      child: Text("Save"),
                      onPressed: () {
                        Map<String, String> contact = {
                          'name': nameValue,
                          'phone': phoneValue
                        };
                        widget._addContact(contact);
                        Scaffold.of(context).showSnackBar(SnackBar(
                          content: Text("The contact has been added."),
                          action: SnackBarAction(
                            label: "OKAY",
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, "/");
                            },
                          ),
                        ));
                        _timer =
                            new Timer(const Duration(milliseconds: 2000), () {
                          Navigator.pushReplacementNamed(context, '/');
                        });
                      },
                    )
                  ],
                )));
  }
}
