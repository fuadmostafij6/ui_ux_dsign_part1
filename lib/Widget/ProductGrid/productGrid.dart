
import 'package:flutter/material.dart';

import '../ProductCard/card.dart';

Widget buildTrendingProduct(String name, bool seeMore) {
  return Column(

    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(name, style: TextStyle(color: Colors.black.withOpacity(0.9), fontSize: 20, letterSpacing: 5),),
          ),

          seeMore?
          TextButton(onPressed: (){}, child: Text("See More", style: const TextStyle(color: Colors.red),)):
          Container()
        ],
      ),
      Padding(
        padding: const EdgeInsets.all(2.0),
        child: GridView.builder(
            primary: false,
            shrinkWrap: true,
            itemCount: 10,

            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 12.0,
              crossAxisCount: 2,
            ),


            itemBuilder: (context, index){
              return buildCard(context);
            }),
      )
    ],
  );
}