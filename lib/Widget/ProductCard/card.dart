

import 'package:flutter/material.dart';

import '../../Pages/ProductDetails/ProductDetails.dart';
Widget buildCard(BuildContext context) {
  return

    InkWell(
      onTap: (){
        //Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>ProductDetailsPage()), (route) => false);
       Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProductDetailsPage(price: "500",name: 'product name', image: 'https://picsum.photos/200/300',id: "02",details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus luctus laoreet lectus, sed vulputate justo tempus non. Integer pretium lectus ipsum, ac semper elit tempus id. Curabitur et ante nec libero sollicitudin lobortis. Aliquam vel rutrum tortor. Nulla sit amet justo lectus. Sed faucibus porttitor sodales. Ut non eros sit amet sem porttitor congue sit amet a tellus. Pellentesque molestie posuere ex. Fusce porttitor libero ac sapien ultricies, in facilisis ipsum mattis. Pellentesque pharetra dignissim mi, ut faucibus velit vestibulum et.",)));
      },
      child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),

            child: Image.network("https://picsum.photos/200/300", width:200, height:150 , fit: BoxFit.fill,)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Product Name", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
            SizedBox(width: 25,),
            Text("500tk", style: TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 18, fontWeight: FontWeight.bold),),

          ],
        ),

      ],
  ),
    );
}