


import 'package:flutter/material.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({Key? key}) : super(key: key);

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: GestureDetector(
onTap: (){
  Navigator.pop(context);
},

            child: const Text("Product Details")),
      )
    );
  }
}
