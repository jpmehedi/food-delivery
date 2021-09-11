import 'package:flutter/material.dart';
import 'package:food_delivery/views/login/login.dart';
import 'package:food_delivery/views/otp/otp.dart';
import 'package:food_delivery/views/signup/signup.dart';
import 'package:food_delivery/welcome/welcome.dart';

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
      initialRoute: LoginScreen.PATH,
      routes: {
        LoginScreen.PATH: (ctx) => LoginScreen(),
        SignUpScreen.PATH: (ctx) => SignUpScreen(),
        Otppage.PATH: (context) => Otppage(),
        Welcomescreen.PATH: (context) => Welcomescreen(),
      },
    );
  }
}
