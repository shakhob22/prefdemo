import 'dart:async';

import 'package:flutter/material.dart';
import 'package:prefdemo/pages/home_page.dart';
import 'package:prefdemo/pages/login_page.dart';
import 'package:prefdemo/services/pref_service.dart';

class SplashPage extends StatefulWidget {
  static final String id = "splash_page";
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  String? name;
  String? email;
  String? phone;
  String? password;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 1),(){
      Prefs.loadUser().then((value) => {
        if (value == null){
          Navigator.pushReplacementNamed(context, LoginPage.id)
        } else {
          name = value.name,
          email = value.email,
          phone = value.phone,
          password = value.password,
          //Prefs.removeUser()
          Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context){
                    return HomePage(name: name, email: email, phone: phone, password: password,);
                  })
          )
        }
      });

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Welcome back!", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.black),),
      ),
    );
  }
}
