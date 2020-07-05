import 'package:flutter/material.dart';

class ListeCategorieProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          /*

          -
          - images/cats/accessories.png
          - images/cats/jeans.png
          - images/cats/shoe.png
           */
          new Categorie(
            image_location: "images/cats/tshirt.png",
            image_caption: "Tshirt",
          ),
          Categorie(
            image_location: "images/cats/dress.png",
            image_caption: "Robes",
          ),
          Categorie(
            image_location: "images/cats/formal.png",
            image_caption: "Vestes",
          ),
          Categorie(
            image_location: "images/cats/informal.png",
            image_caption: "Blouson",
          ),
          Categorie(
            image_location: "images/cats/jeans.png",
            image_caption: "Jean",
          )

        ],
      ),
    );
  }
}

class Categorie extends StatelessWidget {

  final String image_location;
  final String image_caption;

  Categorie({
    this.image_location,
    this.image_caption
    });

  /*
      new Categorie(
         image_location:"xxxx",
         image_caption:"yyyyyyy"
      )

   */

  @override
  Widget build(BuildContext context) {
    return Padding(
         padding: const EdgeInsets.all(2.0),
         child: InkWell(
           onTap: (){},
           child: Container(
             width: 100.0,
             child: ListTile(
               title:Image.asset(image_location,height:80.0 ,) ,
               subtitle: Container(
                  alignment: Alignment.topCenter,
                   child: Text(image_caption,
                   style: TextStyle(
                     fontSize: 12.0,
                     fontWeight: FontWeight.bold
                   ),)
               ),
             ),
           ),
         ),

    );
  }
}






