
import 'package:flutter/material.dart';

Widget buildSlider() {
  return SizedBox(
    height: 200,

    child: ListView.builder(
        primary: false,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 4,

        itemBuilder:(context, index){

          return

            Stack(
              children: [
                Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image.network("https://picsum.photos/200/300",height: 200,width: 300, fit: BoxFit.cover,)
                ),
                Positioned(
                    bottom:5,
                    right:20,
                    child: ElevatedButton(onPressed: (){}, child: Text("Shop")))

              ],
            );
        }),
  );
}