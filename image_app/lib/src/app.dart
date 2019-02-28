import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'models/ImageModel.dart';
import 'dart:convert';
import 'widgets/ImageList.dart';

class ImageApp extends StatefulWidget {
  _ImageAppState createState() => _ImageAppState();
}

class _ImageAppState extends State<ImageApp> {
  int count = 0;
  List<ImageModel> images = [];
  void fetchData() async {
    setState(() {
      count++;
    });
    var response = await get('https://jsonplaceholder.typicode.com/photos/$count');
    var imageModel = ImageModel.fromJson(json.decode(response.body));
    setState(() {
      images.add(imageModel);
    });
  }
  @override
  Widget build(BuildContext context) {
   return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text("Let's see images!"),backgroundColor: Colors.red,),
      floatingActionButton: FloatingActionButton(onPressed: fetchData, child: Icon(Icons.add),),
      body: ImageList(images)
      ),
    );
  }
}