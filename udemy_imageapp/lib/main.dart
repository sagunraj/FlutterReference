import 'package:flutter/material.dart';
import './pages/auth.dart';
import './pages/products_admin.dart';
import './pages/products.dart';
import './pages/product.dart';

void main() => runApp(ImageApp());
class ImageApp extends StatefulWidget {
  @override
  _ImageAppState createState() => _ImageAppState();
}

class _ImageAppState extends State<ImageApp> {
  List<Map<String, dynamic>> _products = [];

    void _addProducts(Map<String, dynamic> product) {
    setState(() {
      _products.add(product);
    });
  }

  void _deleteProduct(int index){
    setState((){
      _products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepPurple,
        brightness: Brightness.light
      ),
      // home: Auth(),
      routes: {
        '/': (BuildContext context) => ProductsPage(_products),
        '/admin': (BuildContext context) => ProductsAdminPage(_addProducts, _deleteProduct),
      },
      onGenerateRoute: (RouteSettings settings){
        final List<String> pathElements = settings.name.split('/');
        if(pathElements[0] != ''){
          return null;
        }
        if(pathElements[1] == 'product'){
          final int index =int.parse(pathElements[2]);
        return MaterialPageRoute<bool>(builder: (BuildContext context)=>Product(_products[index]['title'], _products[index]['image']));

        }
      },
    onUnknownRoute: (RouteSettings settings){
      return MaterialPageRoute(builder: (BuildContext context) => ProductsPage(_products));
    },);
  }
}
