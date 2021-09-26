import 'dart:ui';

import 'package:cancer_app/screens/home/home.dart';
import 'package:cancer_app/sizeConfig.dart';
import 'package:flutter/material.dart';

import 'components/signup.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email = "";
  String password = "";
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
          ListView(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(36)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: getProportionateScreenHeight(323),
                    ),
                    Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Color(0xFF562900),
                            fontFamily: "Gilroy",
                            fontSize: getProportionateScreenWidth(49),
                            fontWeight: FontWeight.bold),
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
                    Center(
                      child: Text(
                        "Forgot Password?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xFF562900),
                            fontFamily: "Google Sans",
                            fontSize: getProportionateScreenWidth(14),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(20),
                    ),
                    Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home()));
                          },
                          child: ClipRect(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                              child: Container(
                                width: getProportionateScreenWidth(328),
                                height: getProportionateScreenHeight(67),
                                child: Center(
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Color(0xFF562900),
                                        fontFamily: "Google Sans",
                                        fontSize:
                                            getProportionateScreenWidth(21),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: getProportionateScreenWidth(1),
                                        color: Colors.grey),
                                    color: Colors.black12.withOpacity(0.15),
                                    borderRadius: BorderRadius.circular(19)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(20),
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUp()));
                        },
                        child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Don't have an account? ",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Google Sans",
                                      fontSize: getProportionateScreenWidth(14),
                                      fontWeight: FontWeight.w200),
                                ),
                                TextSpan(
                                  text: "Create new account",
                                  style: TextStyle(
                                      color:
                                          Colors.orange[900]?.withOpacity(0.8),
                                      fontFamily: "Google Sans",
                                      fontSize: getProportionateScreenWidth(14),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
