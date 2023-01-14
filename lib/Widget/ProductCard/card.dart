

import 'package:flutter/material.dart';
Widget buildCard() {
  return Card(
    color: Colors.black,

    child: Stack(
      children: [
        Opacity(

            opacity: 0.7,
            child: Image.network("https://picsum.photos/200/300", width:200 ,)),
        Positioned(
            left: 2,
            bottom: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Product Name", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                SizedBox(width: 25,),
                Text("500tk", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),

              ],
            )),

      ],
    ),

  );
}