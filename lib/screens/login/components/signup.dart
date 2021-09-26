import 'dart:ui';

import 'package:cancer_app/screens/login/components/signupEmail.dart';
import 'package:cancer_app/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                      height: getProportionateScreenHeight(333),
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
                                      color:
                                          Colors.orange[900]?.withOpacity(0.8),
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
                      "NAME",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xFF562900),
                          fontFamily: "Google Sans",
                          fontSize: getProportionateScreenWidth(12),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: getProportionateScreenHeight(8)),
                    TextField(
                      decoration: const InputDecoration(
                        labelStyle: TextStyle(
                            color: Colors.black,
                            fontFamily: "Google Sans",
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                        hintText: 'Enter you name',
                        hintStyle: TextStyle(
                            color: Colors.black26,
                            fontFamily: "Google Sans",
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(50),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              "GENDER",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xFF562900),
                                  fontFamily: "Google Sans",
                                  fontSize: getProportionateScreenWidth(12),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: getProportionateScreenHeight(8)),
                            Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: Row(
                                children: [
                                  Text(
                                    "Male",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: maleTextColor,
                                        fontFamily: "Google Sans",
                                        fontSize:
                                            getProportionateScreenWidth(14),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Switch(
                                      value: _switchIsOn,
                                      activeColor: Colors.pink[300],
                                      inactiveThumbColor: Colors.blue[300],
                                      inactiveTrackColor: Colors.blue[100],
                                      onChanged: (_switchIsOn) {
                                        setState(() {
                                          if (_switchIsOn) {
                                            maleTextColor = Colors.grey;
                                            femaleTextColor = Colors.pink;
                                          } else {
                                            maleTextColor = Colors.blue;
                                            femaleTextColor = Colors.grey;
                                          }
                                          this._switchIsOn = _switchIsOn;
                                        });
                                      }),
                                  Text(
                                    "Female",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: femaleTextColor,
                                        fontFamily: "Google Sans",
                                        fontSize:
                                            getProportionateScreenWidth(14),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "DATE OF BIRTH",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xFF562900),
                                  fontFamily: "Google Sans",
                                  fontSize: getProportionateScreenWidth(12),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: getProportionateScreenHeight(4)),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary:
                                      Colors.limeAccent[100]?.withOpacity(0.4),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      side: BorderSide(width: 0.5)),
                                ),
                                onPressed: () {
                                  DatePicker.showDatePicker(context,
                                      showTitleActions: true,
                                      minTime: DateTime(1800, 3, 5),
                                      // ------------------------------DATE CHOOSER-----------------------------------------
                                      onConfirm: (date) {
                                    print('confirm $date');
                                  },
                                      currentTime: DateTime.now(),
                                      locale: LocaleType.en);
                                },
                                child: Text("Choose Date",
                                    style: TextStyle(
                                        color: Colors.brown[800],
                                        fontWeight: FontWeight.bold))),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(60),
                    ),
                    Center(
                      child: ElevatedButton(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            "Next",
                            style: TextStyle(
                                color: Colors.brown[900],
                                fontFamily: "Google Sans",
                                fontSize: getProportionateScreenWidth(18),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpEmail()));
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
        ],
      ),
    );
  }
}
