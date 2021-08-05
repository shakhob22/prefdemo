import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prefdemo/model/user_model.dart';
import 'package:prefdemo/pages/home_page.dart';
import 'package:prefdemo/pages/login_page.dart';
import 'package:prefdemo/services/pref_service.dart';

class SignupPage extends StatefulWidget {
  static final String id = "signup_page";
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

  void _doSignUp() {
    String name = nameController.text.toString().trim();
    String email = emailController.text.toString().trim();
    String phone = phoneController.text.toString().trim();
    String password = passwordController.text.toString().trim();
    User user = new User(name, email, phone, password);
    Prefs.storeUser(user);

    //Navigator.pushReplacementNamed(context, HomePage.id);
    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context){return new HomePage(name: name, email: email, phone: phone, password: password,);}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 10,),
              Container(
                alignment: Alignment.centerLeft,
                child: BackButton(
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, LoginPage.id);
                  },
                )
              ),
              Text("Let's Get Started!", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
              Text("Create an account to Q Allure to get all features", style: TextStyle(color: Colors.grey),),
              SizedBox(height: 30,),
              // #name
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
                      controller: nameController,
                      style: TextStyle(
                          height: 1.7,
                          fontSize: 20
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.person, size: 20,),
                        hintText: "Name",
                        hintStyle: TextStyle(color: Colors.grey[300], fontSize: 20,),
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
                        prefixIcon: Icon(Icons.mail, size: 20),
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.grey[300], fontSize: 20),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(color: Colors.blue, width: 2.0),
                          gapPadding: 10
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

              // #phone
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
                      controller: phoneController,
                      style: TextStyle(
                          height: 1.7,
                          fontSize: 20
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.phone_iphone, size: 20,),
                        hintText: "Phone",
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
              SizedBox(height: 40,),

              // #create
              Container(
                height: 60,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 70),
                child: MaterialButton(
                  onPressed: (){
                    _doSignUp();
                  },
                  color: Colors.blue.shade900,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Center(child: Text("CREATE", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),),
                ),
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?", style: TextStyle(fontSize: 16, color: Colors.grey.shade800),),
                  SizedBox(width: 10,),
                  TextButton(
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, LoginPage.id);
                    },
                    child: Text("Login here", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
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
