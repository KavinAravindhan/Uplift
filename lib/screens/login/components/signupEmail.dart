import 'dart:ui';

import 'package:cancer_app/screens/home/home.dart';
import 'package:cancer_app/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class SignUpEmail extends StatefulWidget {
  const SignUpEmail({Key? key}) : super(key: key);

  @override
  _SignUpEmailState createState() => _SignUpEmailState();
}

class _SignUpEmailState extends State<SignUpEmail> {
  String email = "";
  String password = "";
  bool _switchIsOn = false;
  Color maleTextColor = Colors.blue;
  Color femaleTextColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image(
              image: AssetImage("assets/welcome/BG/BG.png"),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(36)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(373),
                ),
                Center(
                  child: Text(
                    "Signup",
                    style: TextStyle(
                        color: Color(0xFF562900),
                        fontFamily: "Gilroy",
                        fontSize: getProportionateScreenWidth(36),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(10),
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {},
                    child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Already have an account?\n",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Google Sans",
                                  fontSize: getProportionateScreenWidth(14),
                                  fontWeight: FontWeight.w200),
                            ),
                            TextSpan(
                              text: "Sign in",
                              style: TextStyle(
                                  color: Colors.orange[900]?.withOpacity(0.8),
                                  fontFamily: "Google Sans",
                                  fontSize: getProportionateScreenWidth(14),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Text(
                  "EMAIL ADDRESS",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFF562900),
                      fontFamily: "Google Sans",
                      fontSize: getProportionateScreenWidth(12),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: getProportionateScreenHeight(8)),
                TextField(
                  onChanged: (String text) {
                    setState(() {
                      email = text;
                    });
                  },
                  decoration: const InputDecoration(
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontFamily: "Google Sans",
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                    hintText: 'example@abc.com',
                    hintStyle: TextStyle(
                        color: Colors.black26,
                        fontFamily: "Google Sans",
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(40),
                ),
                Text(
                  "PASSWORD",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFF562900),
                      fontFamily: "Google Sans",
                      fontSize: getProportionateScreenWidth(12),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: getProportionateScreenHeight(8)),
                TextField(
                  onChanged: (String text) {
                    setState(() {
                      password = text;
                    });
                  },
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontFamily: "Google Sans",
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                    hintText: 'enter the password',
                    hintStyle: TextStyle(
                        color: Colors.black26,
                        fontFamily: "Google Sans",
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(60),
                ),
                Center(
                  child: ElevatedButton(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.brown[900],
                            fontFamily: "Google Sans",
                            fontSize: getProportionateScreenWidth(18),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    onPressed: () {
                      // ---------------------Firebase here--------------------------
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.amber[700]?.withOpacity(0.75),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
