import 'package:flutter/material.dart';
import './list_view.dart';
import './grid_view.dart';

class ContactListPage extends StatefulWidget {
  List<Map<String, String>> _contactDetails;
  ContactListPage([this._contactDetails]);

  @override
  _ContactListPageState createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          floatingActionButton: FloatingActionButton(child: Icon(Icons.add), onPressed: (){
            Navigator.pushNamed(context, "/add-contact");
          },),
          appBar: AppBar(
            title: Text("Contact List"),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  text: "List View",
                  icon: Icon(Icons.list),
                ),
                Tab(text: "Grid View", icon: Icon(Icons.grid_on))
              ],
            ),
          ),
          drawer: Drawer(
            child: Container(
                child: ListView(
              children: <Widget>[
                AppBar(
                  automaticallyImplyLeading: false,
                  title: Text("Options"),
                ),
                ListTile(
                  title: Text("Add New Contact"),
                  onTap: () {
                    Navigator.pushNamed(context, '/add-contact');
                  },
                ),
                ListTile(
                    title: Text("About"),
                    onTap: () {
                      Navigator.pushNamed(context, '/about');
                    })
              ],
            )),
          ),
          body: Container(
            child: TabBarView(
              children: <Widget>[
                ListViewPage(widget._contactDetails),
                GridViewPage(widget._contactDetails),
              ],
            ),
          ),
        ));
  }
}
