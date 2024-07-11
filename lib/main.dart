import 'package:flutter/material.dart';

import 'package:myapp/firstPage.dart';
import 'package:myapp/SplashScreen.dart';
//import 'package:myapp/itemPage.dart';

import 'package:myapp/itemspage.dart';
import 'package:myapp/loginpage.dart';
import 'package:myapp/registerpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => SplashScreen(),
        "firstPage": (context) => firstPage(),
        //"itemPage":(context) => itemPage(product: products[index]),
        "itemspage":(context) => itemspage(),
        "login":(context) => loginpage(),
        "register":(context) => registerpage(),


      },
    );
  }
}
