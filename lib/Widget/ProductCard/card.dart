

import 'package:flutter/material.dart';
Widget buildCard() {
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(10),

          child: Image.network("https://picsum.photos/200/300", width:200, height:150 , fit: BoxFit.fill,)),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Product Name", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
          SizedBox(width: 25,),
          Text("500tk", style: TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 18, fontWeight: FontWeight.bold),),

        ],
      ),

    ],
  );
}