import 'package:flutter/material.dart';
import 'package:ecommerce/components/cartProduit.dart';

class CartProd extends StatefulWidget {
  @override
  _CartProdState createState() => _CartProdState();
}

class _CartProdState extends State<CartProd> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('kay Djeude'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          /*new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new CartProd()));
              })*/
        ],
      ),
      body: new CartProduit(),
      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: new Text("Total :"),
                subtitle: new Text("20000 CFA"),
              ),
            ),
            Expanded(
              child: new MaterialButton(
                onPressed: () {},
                child: new Text(
                  "Commander",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
