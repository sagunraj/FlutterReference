import 'package:flutter/material.dart';
import 'dart:async';

class Product extends StatelessWidget {
  final String title;
  final String imageUrl;

  Product(this.title, this.imageUrl);

  _showWarningDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Are you sure?"),
            content: Text("This action cannot be undone."),
            actions: <Widget>[
              FlatButton(
                  child: Text("Yes"),
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pop(context, true);
                  }),
              FlatButton(
                child: Text("No"),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          Navigator.pop(context, false);
          return Future.value(false);
        },
        child: Scaffold(
            appBar: AppBar(
              title: Text("Product Detail"),
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(imageUrl),
                Container(child: Text(title), padding: EdgeInsets.all(10.0)),
                Container(
                    padding: EdgeInsets.all(10.0),
                    child: RaisedButton(
                        color: Theme.of(context).accentColor,
                        child: Text("Delete"),
                        onPressed: () {
                          _showWarningDialog(context);
                        }))
              ],
            )));
  }
}
