import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:prefdemo/model/user_model.dart';
import 'package:prefdemo/pages/home_page.dart';
import 'package:prefdemo/pages/signup_page.dart';
import 'package:prefdemo/services/pref_service.dart';

class LoginPage extends StatefulWidget {
  static final String id = "login_page";
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void _doLogin() {
    String email = emailController.text.toString().trim();
    String password = passwordController.text.toString().trim();
    var user = new User("?name", email, "?Phone", password);
    Prefs.storeUser(user);

    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context){return new HomePage(name: "?name", phone: "?phone", email: email, password: password);}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Image(
                height: 150,
                image: AssetImage("assets/images/image.jpg"),
                fit: BoxFit.cover,
              ),
              Text("Welcome back!", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
              Text("Log in to your existant of Q Allure", style: TextStyle(color: Colors.grey),),
              SizedBox(height: 30,),

              // #email
              Container(
                  height: 65,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          offset: Offset(0, 10),
                          blurRadius: 20,
                        )
                      ]
                  ),
                  child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    child:  TextField(
                      controller: emailController,
                      style: TextStyle(
                          height: 1.7,
                          fontSize: 20
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.person, size: 20,),
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.grey[300], fontSize: 20),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(color: Colors.blue, width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(color: Colors.grey.shade100, width: 0.0),
                        ),
                      ),
                    ),
                  )
              ),
              SizedBox(height: 20,),

              // #password
              Container(
                  height: 65,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          offset: Offset(0, 10),
                          blurRadius: 20,
                        )
                      ]
                  ),
                  child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    child:  TextField(
                      controller: passwordController,
                      style: TextStyle(
                          height: 1.7,
                          fontSize: 20
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.lock, size: 20,),
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.grey[300], fontSize: 20),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(color: Colors.blue, width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(color: Colors.grey.shade100, width: 0.0),
                        ),
                      ),
                    ),
                  )
              ),
              SizedBox(height: 5,),

              // #forgetPassword
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: (){},
                      child: Text("Forgot Password?", style: TextStyle(color: Colors.black),)
                  )
                ],
              ),
              SizedBox(height: 10,),

              // #loginButton
              Container(
                height: 60,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 70),
                child: MaterialButton(
                  onPressed: (){
                    _doLogin();
                  },
                  color: Colors.blue.shade900,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Center(child: Text("LOG IN", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),),
                ),
              ),
              SizedBox(height: 40,),

              Text("Or connect using", style: TextStyle(color: Colors.grey),),
              SizedBox(height: 20,),

              // #facebook #google
              Row(
                children: [
                  Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: MaterialButton(
                            onPressed: (){},
                            color: Colors.blue.shade900,
                            height: 45,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Ionicons.logo_facebook, color: Colors.white,),
                                SizedBox(width: 10,),
                                Text("Facebook", style: TextStyle(color: Colors.white),)
                              ],
                            )
                        ),
                      )
                  ),
                  Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: MaterialButton(
                          onPressed: (){},
                          color: Colors.red,
                          height: 45,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Ionicons.logo_google, color: Colors.white,),
                              SizedBox(width: 10,),
                              Text("Google", style: TextStyle(color: Colors.white),)
                            ],
                          ),
                        ),
                      )
                  )
                ],
              ),
              SizedBox(height: 30,),

              // #signUp
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?", style: TextStyle(fontSize: 16, color: Colors.grey.shade800),),
                  SizedBox(width: 10,),
                  TextButton(
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, SignupPage.id);
                    },
                    child: Text("Sign Up", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}