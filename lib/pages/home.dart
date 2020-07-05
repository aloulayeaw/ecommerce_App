import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//===========Mes importations de packadges  ==========
import 'package:ecommerce/components/liste_categories.dart';
import 'package:ecommerce/components/liste_produits.dart';
import 'package:ecommerce/pages/cartProd.dart';
import 'package:ecommerce/pages/login.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
//===Widget Caroussel=================

    Widget my_caroussel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage("images/c1.jpg"),
          AssetImage("images/m1.jpeg"),
        ],
        //=====Animation du Carousel
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        //=====Points du Caroussel=====
        dotSize: 4.0,
        dotColor: Colors.red,
        indicatorBgPadding: 4.0,
      ),
    );

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Colors.red,
          elevation: 0.1,
          actions: <Widget>[
            new IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: null),
            new IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => new CartProd()));
                })
          ],
        ),
        drawer: new Drawer(
          child: ListView(
            children: <Widget>[
              //=====Entete du Drawer=============
              new UserAccountsDrawerHeader(
                accountName: Text("Birane Baila Wane"),
                accountEmail: Text("douvewane85@gmail.com"),
                decoration: new BoxDecoration(color: Colors.red),
                currentAccountPicture: GestureDetector(
                    child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                )),
              ),

              //=====Corps du Drawer=============
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text("Accueil"),
                  leading: Icon(
                    Icons.home,
                    color: Colors.red,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => new Login()));
                },
                child: ListTile(
                  title: Text("Mon Compte"),
                  leading: Icon(
                    Icons.person,
                    color: Colors.red,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text("Mes Commandes"),
                  leading: Icon(
                    Icons.shopping_basket,
                    color: Colors.red,
                  ),
                ),
              )
            ],
          ),
        ),
        body: ListView(
          children: <Widget>[
            //====Widget Caroussel=======
            my_caroussel,
            //======Padding============
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Catégories",
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ),
            //=======Zones des Catégories=========
            ListeCategorieProduct(),
            //======Padding============
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Nouvel Arrivage",
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ),

            //======Zones des Produits======
            Container(
              height: 320.0,
              child: ListeProduit(),
            )
          ],
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
