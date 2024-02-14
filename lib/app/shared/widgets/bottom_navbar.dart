import 'package:flutter/material.dart';
import 'package:deep_dive_get_cli/app/modules/home/views/home_view.dart';


class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int index=0;
  List page= [
    HomeView(),

  ];
  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
        backgroundColor:Colors.white,
        selectedFontSize:0,
        onTap: (value){
           (() {
            index=value;
           });
        },
      currentIndex: index,
        items:[
          BottomNavigationBarItem(icon: Container(width:24,height:24,child: Image.asset('assets/images/ig_home.png')), label:""),
          BottomNavigationBarItem(icon: Container(width:24,height:24,child: Image.asset('assets/images/ig_search.png')), label:""),
          BottomNavigationBarItem(icon: Container(width:24,height:24,child: Image.asset('assets/images/ig_shop.png')), label:""),
          BottomNavigationBarItem(icon: Container(width:24,height:24,child: Image.asset('assets/images/ig_reels.png')), label:""),
          BottomNavigationBarItem(icon: Container(width:30,height:30,child: Image.asset('assets/images/ig_avatar.png')), label:""),
         
        ]
      );
  }
}