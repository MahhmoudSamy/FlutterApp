import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'main_screen.dart';



class VerificationScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<VerificationScreen> {
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
                              "assets/ver.png",
                              height: 90,
                              width: 90,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20, top: 20),
                            alignment: Alignment.bottomRight,
                            child: Text(
                              "Verification",
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
                const SizedBox(
                  height: 40,
                ),
                const Icon(Icons.dialpad_rounded, size: 50),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Enter Your PIN",
                  style: TextStyle(fontSize: 40),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Otp(),
                    Otp(),
                    Otp(),
                    Otp(),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Rider can't find a pin",
                  style: TextStyle(fontSize: 20),
                ),
                ElevatedButton(
                  child: Text('Get Started'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => MainScreen()));
                  },
                ),
              ],
            )
        )
    );
  }
}
    class Otp extends StatelessWidget {
    const Otp({
    Key? key,
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
    return SizedBox(
    width: 50,
    height: 50,
    child: TextFormField(
    keyboardType: TextInputType.number,
    style: Theme.of(context).textTheme.headline6,
    textAlign: TextAlign.center,
    inputFormatters: [
    LengthLimitingTextInputFormatter(1),
    FilteringTextInputFormatter.digitsOnly
    ],
    onChanged: (value) {
    if (value.length == 1) {
    FocusScope.of(context).nextFocus();
    }
    if (value.isEmpty) {
    FocusScope.of(context).previousFocus();
    }
    },
    decoration: const InputDecoration(
    hintText: ('0'),
    ),
    onSaved: (value) {},
    ),

    );

    }
    }
