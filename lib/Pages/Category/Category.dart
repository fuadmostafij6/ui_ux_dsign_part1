


import 'package:flutter/material.dart';
import 'package:ui_ux_design/const.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  List<String> categoryItem =[
    "Shirt", "Pant","coat", "Gadgets", "Baby"
  ];
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Constance().color1 ,
      appBar: AppBar(
        title: Text("Category"),
        centerTitle: true,
        backgroundColor: Constance().color1,
        elevation: 0,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                // primary: false,
                // shrinkWrap: true,
                itemCount: categoryItem.length,
                  itemBuilder:(context, index){
                return InkWell(
                  onTap: (){

                    setState(() {
                      selectedIndex = index;
                    });

                    print(selectedIndex);
                  },
                  child: Padding(
                    padding:  EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color:  selectedIndex == index?Colors.black:Colors.transparent
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(categoryItem[index], style: TextStyle(
                            color: Colors.white, fontSize:20, fontWeight: FontWeight.bold, letterSpacing: 2
                          ),),
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),

            selectedIndex==0? Center(child: Text("Shirt"),):

            selectedIndex==1?Center(child: Text("Pant"),):
            selectedIndex==2?Center(child: Text("Coat"),):
            selectedIndex==3?Center(child: Text("Gadget"),):
            selectedIndex==4?Center(child: Text("Baby"),):
                Container()



          ],
        ),
      ),
    );
  }
}
