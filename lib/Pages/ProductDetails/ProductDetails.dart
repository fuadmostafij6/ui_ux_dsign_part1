


import 'package:flutter/material.dart';
import 'package:ui_ux_design/const.dart';

class ProductDetailsPage extends StatefulWidget {
  final String name;
  final String id;
  final String price;
  final String image;
  final String details;

  const ProductDetailsPage({Key? key, required this.name, required this.id, required this.price, required this.image, required this.details}) : super(key: key);

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {

  String? firstHalf;
  String? secondHalf;

  bool flag = true;


  @override
  void initState() {

    if (widget.details.length > 80) {
      firstHalf = widget.details.substring(0, 80);
      secondHalf = widget.details.substring(80, widget.details.length);
    } else {
      firstHalf = widget.details;
      secondHalf = "";
    }
    super.initState();
  }
  var a =0;

  //
  @override
  void dispose() {
    print("InsedeDispose 0");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
Size size = MediaQuery.of(context).size;
    return  Scaffold(

      appBar: Constance().newAppBar("Product Details"),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [

                SizedBox(
                  width: size.width,
                  height: size.height*0.35,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child:Image.network(widget.image, width: size.width, fit: BoxFit.fill,) ,
                  ),

                ),


                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 27,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.arrow_circle_left),
                        Icon(Icons.arrow_circle_right)

                      ],
                    ),
                  ),
                )
              ],
            ),

            SizedBox(height: 25,),

            Container(
              width: size.width,
            //  padding: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20)
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(widget.name.toUpperCase(), style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20
                    ),),
                  ),

                  Row(

                    children: [
                      SizedBox(width: 8,),
                      Icon(Icons.star, color: Colors.yellow,),
                      SizedBox(width: 15,),
                      Text("5.0", style:TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w600
                      ) ,),
                      SizedBox(width: 10,),
                      Text("(450 Review)", style: TextStyle(
                          fontSize: 15, color: Colors.grey.withOpacity(1)
                      ),)
                    ],
                  ),

                  secondHalf!.isEmpty
                      ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(firstHalf!),
                      )
                      : Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                    children: <Widget>[
                        Text(flag ? ("${firstHalf!}...") : (firstHalf! + secondHalf!)),
                        InkWell(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                flag ? "show more" : "show less",
                                style: TextStyle(color: Colors.redAccent),
                              ),
                            ],
                          ),
                          onTap: () {
                            setState(() {
                              flag = !flag;
                            });
                          },
                        ),
                    ],
                  ),
                      ),


                ],
              ) ,
            )
          ],

        ),
      )

    );
  }
}
