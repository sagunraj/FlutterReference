import 'package:flutter/material.dart';
import 'products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;
  ProductManager(this.startingProduct);
  _ProductManagerState createState() => _ProductManagerState();
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    _products.add(widget.startingProduct);
    super.initState();
  }
  void _addProducts() {
    setState(() {
      _products.add("New Food Tester");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            onPressed: _addProducts,
            child: Text("Add Product"),
            color: Theme.of(context).primaryColor,
          ),
        ),
        Products(_products)
      ],
    );
  }
}
