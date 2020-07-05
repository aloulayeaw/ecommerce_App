import 'package:flutter/material.dart';

class ProduitDetail extends StatefulWidget {
  final produitDetail_name;
  final produitDetail_newprice;
  final produitDetail_oldprice;
  final produitDetail_picture;

  ProduitDetail({
    this.produitDetail_name,
    this.produitDetail_newprice,
    this.produitDetail_oldprice,
    this.produitDetail_picture,
  });

  @override
  _ProduitDetailState createState() => _ProduitDetailState();
}

class _ProduitDetailState extends State<ProduitDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        ],
      ),
      body: new ListView(children: <Widget>[
        new Container(
          height: 300.0,
          child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.produitDetail_picture),
              ),
              footer: new Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: new Text(
                      widget.produitDetail_name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    title: new Row(
                      children: <Widget>[
                        Expanded(
                            child: new Text(
                          "${widget.produitDetail_oldprice} CFA",
                          style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough),
                        )),
                        Expanded(
                            child: new Text(
                          "${widget.produitDetail_newprice} CFA",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.red),
                        ))
                      ],
                    ),
                  ))),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: new Text("Size"),
                          content: new Text("Choisir une Taille"),
                          actions: <Widget>[
                            new MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: new Text("Fermer"),
                            ),
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(child: new Text("Size")),
                    Expanded(child: new Icon(Icons.arrow_drop_down)),
                  ],
                ),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: new Text("Color"),
                          content: new Text("Choisir une couleur"),
                          actions: <Widget>[
                            new MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: new Text("Fermer"),
                            ),
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(child: new Text("Color")),
                    Expanded(child: new Icon(Icons.arrow_drop_down)),
                  ],
                ),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: new Text("Quantité"),
                          content: new Text("Choisir une quantité"),
                          actions: <Widget>[
                            new MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: new Text("Fermer"),
                            ),
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(child: new Text("Qty")),
                    Expanded(child: new Icon(Icons.arrow_drop_down)),
                  ],
                ),
              ),
            )
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: MaterialButton(
                onPressed: () {},
                color: Colors.red,
                textColor: Colors.white,
                elevation: 0.2,
                child: new Text("Acheter Now"),
              ),
            ),
            new IconButton(
                icon: Icon(Icons.add_shopping_cart, color: Colors.red),
                onPressed: () {}),
            new IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.red,
                ),
                onPressed: () {}),
          ],
        ),
        Divider(),
        new ListTile(
          title: new Text("Produit Description"),
          subtitle: new Text(
              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text."),
        ),
        Divider(),
        new Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 7.0, 7.0, 7.0),
              child: new Text(
                "Nom du Produit",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(7.0),
              child: new Text(widget.produitDetail_name),
            )
          ],
        ),
        Divider(),
        new Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 7.0, 7.0, 7.0),
              child: new Text(
                "Marque du produit",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(7.0),
              child: new Text("Louis Vuitton"),
            )
          ],
        ),
        Divider(),
        new Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 7.0, 7.0, 7.0),
              child: new Text(
                "Produit Similaire",
                style: TextStyle(color: Colors.grey),
              ),
            )
          ],
        ),
        Divider(),
      ]),
    );
  }
}
