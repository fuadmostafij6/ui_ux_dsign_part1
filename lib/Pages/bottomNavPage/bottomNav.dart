import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ui_ux_design/Pages/Cart/Cart.dart';
import 'package:ui_ux_design/Pages/Homepage/homePageScreen.dart';
import 'package:ui_ux_design/const.dart';

import '../Category/Category.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({Key? key}) : super(key: key);

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    CartPage(),
    CategoryPage(),
    Text(
      'Profile',
      style: Constance().optionStyle,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
      
      Center(child: _widgetOptions[_selectedIndex]) ,
        bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: Constance().color1.withOpacity(0.8),
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.black.withOpacity(.1),
                )
              ],
            ),
            child: SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
                child: GNav(
                  rippleColor: Colors.grey[300]!,
                  hoverColor: Colors.grey[100]!,
                  gap: 8,
                  activeColor: Colors.black,
                  iconSize: 25,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  duration: Duration(milliseconds: 400),
                  tabBackgroundColor: Colors.grey[100]!,
                  color: Colors.black,
                  tabs: const [
                    GButton(
                      icon: Icons.home,
                      text: 'Home',
                    ),
                    GButton(
                      icon: Icons.shopping_bag,
                      text: 'Cart',
                    ),
                    GButton(
                      icon: Icons.list_alt_outlined,
                      text: 'Category',
                    ),
                    GButton(
                      icon: Icons.person,
                      text: 'Profile',
                    ),
                  ],
                  selectedIndex: _selectedIndex,
                  onTabChange: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                ),
              ),
            )));
  }
}
