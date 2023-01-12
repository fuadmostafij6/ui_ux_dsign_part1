import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width: size.width*0.6,
                      height: 60,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),

                        color: Constance().color1.withOpacity(0.2),

                      ),

                      child:  TextField(
                        onTap: (){
                          showSearch(context: context, delegate: MySearchDelegate());

                        },
                        decoration: const InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 15,)
                        ),

                      )),
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.deepPurple.withOpacity(0.2),
                          shape: BoxShape.circle
                        ),
                        child: IconButton(onPressed: (){}, icon: Icon(Icons.notifications, size: 30,color: Colors.deepPurple,))),


                    Positioned(
                      right: 0,
                      top: -3,

                      child: Container(
                        height: 25,
                          width: 25,
                          decoration: const BoxDecoration(
                              color: Colors.deepOrangeAccent,
                              shape: BoxShape.circle
                          ),
                          child: Center(child: Text("2", style: TextStyle(fontSize: 18),))),
                    ),

                    
                    
                  ],
                )


              ],
            ),
          ],
        ),
      ),
    ));
  }
}
