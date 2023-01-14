

import 'package:flutter/material.dart';
import 'package:ui_ux_design/const.dart';

class MySearchDelegate extends SearchDelegate{

List<String> list =["rashed","aziz", "pia", "jamal", "shiraj", "fahad","fuad"];


@override
  ThemeData appBarTheme(BuildContext context) {
    // TODO: implement appBarTheme
    return ThemeData();
  }


  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
      return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
   var data = query.isEmpty? list: list.where((element) =>element.startsWith(query)).toList() ;
    return

      data.isNotEmpty?
      ListView.builder(

        itemCount: data.length,
        itemBuilder:(context, index){

      return

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
          tileColor: Constance().color1,
          title: Text(data[index], style: TextStyle(
            color: Colors.white
          ),),
      ),
        );

    }): const Center(child: Text("There is no data"),);
  }
}