import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  final Function addProduct;

  ProductCreatePage(this.addProduct);
  @override
  _ProductCreatePageState createState() => _ProductCreatePageState();
}

class _ProductCreatePageState extends State<ProductCreatePage> {
  String titleValue = '';
  String descriptionValue = '';
  double priceValue = 0.0;
  bool acceptTerms = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Title"),
              onChanged: (String value) {
                setState(() {
                  titleValue = value;
                });
              },
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Description"),
              keyboardType: TextInputType.multiline,
              maxLines: null,
              onChanged: (String value) {
                setState(() {
                  descriptionValue = value;
                });
              },
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Price'),
              onChanged: (String value) {
                setState(() {
                  priceValue = double.parse(value);
                });
              },
            ),
            SizedBox(height: 10.0,),
            SwitchListTile(title: Text("Do you accept our terms?"), value: acceptTerms, onChanged: (bool value){
             setState(() {
                acceptTerms = value;
             });
            }),
            SizedBox(height: 10.0,),
            RaisedButton(
              child: Text("Save"),
              color: Theme.of(context).accentColor,
              textColor: Colors.white,
              onPressed: () {
                final Map<String, dynamic> product = {
                  'title': titleValue,
                  'description': descriptionValue,
                  'price': priceValue,
                  'image': 'assets/food.jpg'
                };
                widget.addProduct(product);
                Navigator.pushReplacementNamed(context, "/");
              },
            )
          ],
        ));
  }
}

/*  return Center(
      child: RaisedButton(
        child: Text('Save'),
        onPressed: (){
          showModalBottomSheet(context: context, builder: (BuildContext context){
            return Center(child: Text("This is a modal"),);
          });
        },
      )
    ); */
