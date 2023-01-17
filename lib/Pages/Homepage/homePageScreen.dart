import 'package:carousel_indicator/carousel_indicator.dart';
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

  int pageIndex = 0;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Widget> sliderItem = [
      Stack(
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                "https://picsum.photos/200/300",
                height: 250,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
              )),
          Positioned(
              bottom: 5,
              right: 20,
              child: ElevatedButton(onPressed: () {}, child: Text("Shop")))
        ],
      ),
      Stack(
        children: [
          Padding(
              padding: EdgeInsets.all(8.0),
              child: Image.network(
                "https://picsum.photos/200/300",
                height: 250,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
              )),
          Positioned(
              bottom: 5,
              right: 20,
              child: ElevatedButton(onPressed: () {}, child: Text("Shop")))
        ],
      ),
      Stack(
        children: [
          Padding(
              padding: EdgeInsets.all(8.0),
              child: Image.network(
                "https://picsum.photos/200/300",
                height: 250,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
              )),
          Positioned(
              bottom: 5,
              right: 20,
              child: ElevatedButton(onPressed: () {}, child: Text("Shop")))
        ],
      ),
      Stack(
        children: [
          Padding(
              padding: EdgeInsets.all(8.0),
              child: Image.network(
                "https://picsum.photos/200/300",
                height: 250,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
              )),
          Positioned(
              bottom: 5,
              right: 20,
              child: ElevatedButton(onPressed: () {}, child: Text("Shop")))
        ],
      ),
    ];
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildSearchTextField(size, context),
            Container(
                color: Constance().color1.withOpacity(0.5),
                height: 250,
                width: MediaQuery.of(context).size.width,

                child: PageView(
              children:sliderItem,
              onPageChanged: (index){
                setState(() {
                  pageIndex=index;
                });
              },

            )
            ),
            CarouselIndicator(
              count: sliderItem.length,
              index: pageIndex,
              activeColor: Constance().color1,
              color: Colors.black.withOpacity(0.5),
            ),

            buildTrendingProduct("Trending", false),
            buildTrendingProduct("Top Product", true),
            //buildTrendingProduct("Trending"),
          ],
        ),
      ),
    ));
  }
}
