import 'package:ecommerce/pages/produitDetail.dart';
import 'package:flutter/material.dart';

class ListeProduit extends StatefulWidget {
  @override
  _ListeProduitState createState() => _ListeProduitState();
}

class _ListeProduitState extends State<ListeProduit> {
  //=====Liste Produits====================

  var produits = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 25000,
      "price": 20000
    },
    {
      "name": "Robe  Rouge",
      "picture": "images/products/dress1.jpeg",
      "old_price": 35000,
      "price": 25000
    },
    {
      "name": "Jupe",
      "picture": "images/products/skt1.jpeg",
      "old_price": 35000,
      "price": 25000
    },
    {
      "name": "Talon Haute",
      "picture": "images/products/hills1.jpeg",
      "old_price": 35000,
      "price": 25000
    },
    {
      "name": "Jupe",
      "picture": "images/products/skt1.jpeg",
      "old_price": 35000,
      "price": 25000
    },
    {
      "name": "Talon Haute",
      "picture": "images/products/hills1.jpeg",
      "old_price": 35000,
      "price": 25000
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: produits.length,
      gridDelegate:
          new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Product(
          product_picture: produits[index]['picture'],
          product_name: produits[index]['name'],
          product_price: produits[index]['price'],
          product_old_price: produits[index]['old_price'],
        );
      },
    );
  }
}

class Product extends StatelessWidget {
  final String product_name;
  final String product_picture;
  final int product_old_price;
  final int product_price;

  Product(
      {this.product_name,
      this.product_picture,
      this.product_old_price,
      this.product_price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: Text("hero 1"),
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new ProduitDetail(
                      produitDetail_name: product_name,
                      produitDetail_newprice: product_price,
                      produitDetail_oldprice: product_old_price,
                      produitDetail_picture: product_picture,
                    ))),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    product_name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    "$product_price CFA",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w800,
                        fontSize: 12.0),
                  ),
                  subtitle: Text(
                    "$product_old_price CFA",
                    style: TextStyle(
                        color: Colors.black54,
                        decoration: TextDecoration.lineThrough,
                        fontSize: 12.0),
                  ),
                ),
              ),
              child: Image.asset(
                product_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
