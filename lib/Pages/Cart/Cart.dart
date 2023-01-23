


import 'package:flutter/material.dart';

import '../../const.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {


List<int> cartItem= [];



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Constance().color1,
      appBar: Constance().newAppBar("Cart"),

      body:
      Column(
        children: [
          ListView.builder(

              primary: false,
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index){

                cartItem.add(0);

                return Row(

                  children: [


                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.grey,
                      ),
                    ),
                    Column(
                      children: [
                        Text("Product Name", style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),),
                        SizedBox(
                          height: 15,
                        ),
                        Text("\$2500", style: TextStyle(
                            color: Colors.white.withOpacity(0.6), fontWeight: FontWeight.bold,
                            fontSize: 15
                        )),

                      ],
                    ),
                    IconButton(onPressed: (){
                      setState(() {
                        cartItem[index] ++;
                      });
                    }, icon: Icon(
                        Icons.add
                    )),
                    Text(cartItem[index].toString()),
                    IconButton(onPressed: (){

                      setState(() {
                        cartItem[index] --;
                      });
                    }, icon: Icon(
                        Icons.remove
                    ))
                  ],
                );

              }),

        ],
      ),

    );
  }
}
