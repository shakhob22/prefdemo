import 'package:flutter/material.dart';
import 'package:prefdemo/pages/home_page.dart';
import 'package:prefdemo/pages/login_page.dart';
import 'package:prefdemo/pages/signup_page.dart';
import 'package:prefdemo/pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashPage(),
      routes: {
        LoginPage.id: (context) => LoginPage(),
        SignupPage.id: (context) => SignupPage(),
        HomePage.id: (context) => HomePage(),
        SplashPage.id: (context) => SplashPage()
      },
    );
  }
}