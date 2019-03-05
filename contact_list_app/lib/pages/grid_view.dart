import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  List<Map<String, String>> _contactDetails;

  GridViewPage(this._contactDetails);

  @override
  Widget build(BuildContext context) {
    return _contactDetails.length > 0
        ? GridView.count(
            padding: EdgeInsets.all(20.0),
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            children: List<Widget>.generate(_contactDetails.length, (index) {
              return GridTile(
                  child: Card(
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.group,
                      size: 100,
                    ),
                    Text(
                      _contactDetails[index]['name'],
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(_contactDetails[index]['phone'])
                  ],
                ),
              ));
            }))
        : Center(
            child: Text("Add some contacts to see them here."),
          );
  }
}
