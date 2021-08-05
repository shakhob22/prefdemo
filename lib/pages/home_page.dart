import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prefdemo/pages/login_page.dart';
import 'package:prefdemo/services/pref_service.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";
  final String? name;
  final String? email;
  final String? phone;
  final String? password;
  const HomePage({Key? key, this.name, this.email, this.phone, this.password }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("Name:  ", style: TextStyle(fontSize: 24),),
                      Text("Email:  ", style: TextStyle(fontSize: 24),),
                      Text("Phone:  ", style: TextStyle(fontSize: 24),),
                      Text("Password:  ", style: TextStyle(fontSize: 24),),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.name!, style: TextStyle(fontSize: 24),),
                      Text(widget.email!, style: TextStyle(fontSize: 24),),
                      Text(widget.phone!, style: TextStyle(fontSize: 24),),
                      Text(widget.password!, style: TextStyle(fontSize: 24),),
                    ],
                  )
                ],
              ),
              SizedBox(height: 20),
              MaterialButton(
                child: Text("Log Out", style: TextStyle(fontSize: 24, color: Colors.white),),
                height: 50,
                color: Colors.red,
                onPressed: (){
                  Prefs.removeUser();
                  Navigator.pushReplacementNamed(context, LoginPage.id);
                },
              ),
            ],
          ),
        )
    );
  }
}
