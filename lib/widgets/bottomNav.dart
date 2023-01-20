import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

int _bottomNavIndex = 0;
 final iconList = <IconData>[
    Icons.home,
    Icons.brightness_4,
    Icons.brightness_6,
    Icons.brightness_7,
  ];
class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [

      ])
      // AnimatedBottomNavigationBar(
      //   icons: iconList,
      //   activeIndex: _bottomNavIndex,
      //   gapLocation: GapLocation.center, 
      //   activeColor: Colors.amber,
      //   backgroundColor: Colors.deepOrangeAccent[100],
      //   notchSmoothness: NotchSmoothness.softEdge,
      //   leftCornerRadius: 32,
      //   rightCornerRadius: 32,
      //   onTap: (index) => setState(() => {
      //     _bottomNavIndex = index,
      //   print(index)
      //   }),
      //   //other params
      // ),
    );
  }
}
