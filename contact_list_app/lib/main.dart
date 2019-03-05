import 'package:flutter/material.dart';
import './pages/contact_list_page.dart';
import './pages/add_new_contact.dart';
import './pages/about_page.dart';
void main() => runApp(Homepage());

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Map<String, String>> _contactDetails = [];

  void _addContact(Map<String, String> contactDatum){
    _contactDetails.add(contactDatum);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: ContactListPage(_contactDetails),
      routes: {
        '/add-contact': (BuildContext context) => AddNewContactPage(_addContact),
        '/about': (BuildContext context) => AboutPage(),
        '/': (BuildContext context) => ContactListPage(_contactDetails)
      },
    );
  }
}