import 'dart:io';

import 'package:flutter/material.dart';
import 'package:onmyway/screens/signup_screen.dart';

import 'main_screen.dart';


class LoginScreen extends StatefulWidget {
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<LoginScreen> {
  final formGlobalKey = GlobalKey < FormState > ();
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  initWidget() {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
                    color: new Color(0xFF00E676),
                    gradient: LinearGradient(colors: [(new  Color(0xFF00E676)), new Color(0xFF00E676)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 50),
                            child: Image.asset(
                              "assets/car-logo.jpg",
                              height: 90,
                              width: 90,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20, top: 20),
                            alignment: Alignment.bottomRight,
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white
                              ),
                            ),
                          )
                        ],
                      )
                  ),
                ),

                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 70),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[200],
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color(0xffEEEEEE)
                      ),
                    ],
                  ),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty ||!RegExp(r'^[w-\.]+@([\w-]+\.)+[\w]{2,4}').hasMatch(value)){
                        return "Enter Correct Email";
                      }
                      else
                        return null;
                    },
                    cursorColor: Color(0xFF00E676),
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.email,
                        color: Color(0xFF00E676),
                      ),
                      hintText: "Enter Email",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),

                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xffEEEEEE),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 20),
                          blurRadius: 100,
                          color: Color(0xffEEEEEE)
                      ),
                    ],
                  ),
                  child: TextFormField(
                 validator: (value) {
                      if (value!.isEmpty ||!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(value)){
                        return "Enter Password again";
                      }
                      else
                        return null;
                    },
                                      obscureText: true,
                    cursorColor: Color(0xffEEEEEE),
                    decoration: InputDecoration(
                      focusColor: Color(0xffEEEEEE),
                      icon: Icon(
                        Icons.vpn_key,
                        color: Color(0xFF00E676),
                      ),
                      hintText: "Enter Password",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      // Write Click Listener Code Here
                    },
                    child: Text("Forget Password?"),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    // Write Click Listener Code Here.
                     Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => MainScreen()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 20, right: 20, top: 70),
                    padding: EdgeInsets.only(left: 20, right: 20),
                    height: 54,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [(new  Color(0xFF00E676)), new Color(0xFF00E676)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight
                      ),
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey[200],
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 50,
                            color: Color(0xffEEEEEE)
                        ),
                      ],
                    ),
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                  ),
                  
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't Have Any Account?  "),
                      GestureDetector(
                        child: Text(
                          "Register Now",
                          style: TextStyle(
                              color: Color(0xFF00E676)
                          ),
                        ),
                        onTap: () {
                          // Write Tap Code Here.
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUpScreen(),
                              )
                          );
                        },
                      )
                    ],
                  ),
                )
              ],
            )
        )
    );
  }
}