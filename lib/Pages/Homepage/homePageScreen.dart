import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_ux_design/Widget/SearchTextField/searchTextField.dart';


import '../../Widget/ProductCard/card.dart';
import '../../Widget/ProductGrid/productGrid.dart';
import '../../Widget/Slider/slider.dart';
import '../../const.dart';
import '../SearchDelegate/searchPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildSearchTextField(size, context),

            buildSlider(),

             buildTrendingProduct("Trending", false),
             buildTrendingProduct("Top Product", true),
             //buildTrendingProduct("Trending"),

          ],
        ),
      ),
    ));
  }








}
