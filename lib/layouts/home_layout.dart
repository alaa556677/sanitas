import 'package:flutter/material.dart';
import '../modules/home_meat.dart';
import '../modules/meat_search.dart';
import '../modules/photo_result_screen.dart';
import '../modules/photo_search.dart';
import '../modules/products_search.dart';
import '../modules/profile_screen.dart';
import '../shared/constants/shared.dart';
import '../shared/styles/colors.dart';

class HomeLayout extends StatefulWidget{
  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentNumber = 0;
  @override
  Widget build(BuildContext context) {
    print("fffffff ${CacheHelper.getData(key: "meat")}");
    return Scaffold(
      //extendBodyBehindAppBar: true,
      //appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentNumber,
        backgroundColor: bottomNavigationColor,
        selectedItemColor: buttonColor,
        onTap: (index){
          setState(() {
            currentNumber = index;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem (icon: Icon (Icons.home), label: ''),
          BottomNavigationBarItem (icon: Icon (Icons.search_rounded),label: ''),
          BottomNavigationBarItem (icon: Icon (Icons.camera_alt), label: ''),
          BottomNavigationBarItem (icon: Icon (Icons.person), label: ''),
        ],
      ),
      body: screens[currentNumber],
    );
  }
}

List screens = [
  HomeMeatPage(),
  Container(),
  CacheHelper.getData(key: "meat") == null  || CacheHelper.getData(key: "meat") ? MeatSearchScreen() :  ProductsSearch(),
  //ProductsSearch(),
  ProfileScreen(),
];

List appBars = [

];