import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:food_delivery/views/homepage/homePage.dart';
import 'package:food_delivery/views/login/login.dart';
import 'package:food_delivery/views/menu/menu.dart';
import 'package:food_delivery/views/signup/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Food Delivery App",
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.PATH,
      // home: HomePage(),
      routes: {
        LoginScreen.PATH: (ctx) => LoginScreen(),
        MenuScreen.PATH: (ctx) => HomePage(),
        SignUpScreen.PATH: (ctx) => SignUpScreen(),
        HomePage.PATH: (ctx) => HomePage()
      },
    );
  }
}
