import 'package:flutter/material.dart';
import './adduser.dart';

class UserListPage extends StatefulWidget {
  _UserListPageState createState() => _UserListPageState();
  UserListPage({String name, String phone}){
    if(name!=null && phone!=null){
      
    }
  }
}

class _UserListPageState extends State<UserListPage> {
  List<Map<String, String>> userlist;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(title: Text("Options")),
              ListTile(
                  title: Text("Add User"),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              AddUserPage()))),
              ListTile(title: Text("About"), onTap: () {}),
            ],
          ),
        ),
        appBar: AppBar(title: Text("User List")),
        body: Container(child: Text("This is the list")));
  }
}
