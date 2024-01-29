import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'modules/Sign up Screen.dart';
import 'modules/home_meat.dart';
import 'modules/login_screen.dart';
import 'modules/meat_search.dart';
import 'modules/photo_result_screen.dart';
import 'modules/photo_search.dart';
import 'modules/products_search.dart';
import 'modules/profile_screen.dart';
import 'modules/splash_screen.dart';
import 'modules/user_information.dart';
import 'modules/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size (360,690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child){
        return  MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          home:  PhotoResultScreen(),
        );
      },
    );
  }
}

