import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
        primaryColor: Colors.red,
        accentColor: Colors.grey,
        brightness: Brightness.dark,
        fontFamily: "Georgia",
        textTheme: TextTheme(
          titleLarge: TextStyle(
            color: Colors.redAccent,
          ),
          titleMedium: TextStyle(
              color: Colors.redAccent
          ),
          titleSmall: TextStyle(
              color: Colors.redAccent
          ),
          // button: TextStyle(
          //     color: Colors.redAccent
          // ),

        )
      ),
      home: HomePage(),
    );
  }
}



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
          ),
          Center(

            child: Container(
              height: 500,
width: 500,


              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                image: const DecorationImage(image: AssetImage("assets/tree.jpg"))
              ),

              child: Text("Text", style: GoogleFonts.poppins(
                  textStyle:TextStyle()

              ),),
            ),
          )
        ],
      ),
    );
  }
}

