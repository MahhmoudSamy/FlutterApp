// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:onmyway/screens/verification.dart';
import 'login_screen.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) => initWidget();

  Widget initWidget() {
    return Scaffold(
        body: SingleChildScrollView(
         child: Form(
            child: Column(
              children: [
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(90)),
                    color: const Color(0xffF5591F),
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
                            margin: const EdgeInsets.only(top: 50),
                            child: Image.asset(
                              "assets/car-logo.jpg",
                              height: 90,
                              width: 90,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 20, top: 20),
                            alignment: Alignment.bottomRight,
                            child: const Text(
                              "Register",
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
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 70),
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[200],
                    boxShadow: [
                      const BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color(0xffEEEEEE)
                      ),
                    ],
                  ),
                  child: TextFormField(
                    cursorColor: const Color(0xFF00E676),
                    decoration: const InputDecoration(
                      icon: Icon(
                        Icons.person,
                        color: Color(0xFF00E676),
                      ),
                      label: Text("Full Name"),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                                  validator: Validators.compose([
      Validators.required('Name is required'),
      Validators.minLength(5, 'Name cannot be less than 5 characters'),
      Validators.maxLength(10, 'Name cannot be greater than 10 characters'),
    ]),
                  ),
                ),

                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[200],
                    boxShadow: [
                      const BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color(0xffEEEEEE)
                      ),
                    ],
                  ),
                  child: const TextField(
                    cursorColor: Color(0xFF00E676),
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.email,
                        color: Color(0xFF00E676),
                      ),
                      hintText: "Email",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),

                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color(0xffEEEEEE),
                    boxShadow: [
                      const BoxShadow(
                          offset: Offset(0, 20),
                          blurRadius: 100,
                          color: Color(0xffEEEEEE)
                      ),
                    ],
                  ),
                  child: const TextField(
                    cursorColor: Color(0xFF00E676),
                    decoration: InputDecoration(
                      focusColor: Color(0xFF00E676),
                      icon: Icon(
                        Icons.phone,
                        color: Color(0xFF00E676),
                      ),
                      hintText: "Phone Number",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color(0xffEEEEEE),
                    boxShadow: [
                      const BoxShadow(
                          offset: Offset(0, 20),
                          blurRadius: 100,
                          color: Color(0xffEEEEEE)
                      ),
                    ],
                  ),
                  child: const TextField(
                    cursorColor: Color(0xFF00E676),
                    decoration: InputDecoration(
                      focusColor: Color(0xFF00E676),
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

                GestureDetector(
                  onTap: () {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => VerificationScreen()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 70),
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    height: 54,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [(new  Color(0xFF00E676)), new Color(0xFF00E676)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight
                      ),
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey[200],
                      boxShadow: [
                        const BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 50,
                            color: Color(0xffEEEEEE)
                        ),
                      ],
                    ),

                    child: const Text(
                      "REGISTER",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                      // Write Tap Code Here.

                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Have Already Member?  "),
                      GestureDetector(
                        child: const Text(
                          "Login Now",
                          style: TextStyle(
                              color: Color(0xFF00E676)
                          ),
                        ),
                        onTap: () {
                          // Write Tap Code Here.
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) => LoginScreen()));
                        },
                      )
                    ],
                  ),
                )
              ],
            )
         )
        )
    );
  }
}