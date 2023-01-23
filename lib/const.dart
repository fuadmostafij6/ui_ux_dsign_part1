

import 'package:flutter/material.dart';

class Constance{
  PreferredSizeWidget newAppBar(String title){
    return AppBar(

           elevation: 0,
      backgroundColor: Colors.deepPurple,
      title: Text(title),
      centerTitle: true,
    );
  }
  Color color1 = Colors.deepPurple;
  TextStyle optionStyle =TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
}