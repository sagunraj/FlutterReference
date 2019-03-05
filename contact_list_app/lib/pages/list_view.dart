import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  List<Map<String, String>> _contactDetails;
  ListViewPage(this._contactDetails);

  Widget _buildContactItem(BuildContext context, int index) {
    return Card(
        child: ListTile(
            leading: Icon(Icons.group),
            title: Text(_contactDetails[index]['name']),
            subtitle: Text(_contactDetails[index]['phone']),
            onTap: () {}));
  }

  @override
  Widget build(BuildContext context) {
    return _contactDetails.length > 0
        ? ListView.builder(
            itemBuilder: _buildContactItem,
            itemCount: _contactDetails.length,
          )
        : Center(
            child: Text("Add some contacts to see them here."),
          );
  }
}
