import 'package:cancer_app/screens/survey/components/questionCard.dart';
import 'package:cancer_app/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'components/body.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_core/firebase_core.dart';

import 'components/successfullySubmitted.dart';

final _auth = FirebaseAuth.instance;

class Survey extends StatefulWidget {
  @override
  _SurveyState createState() => _SurveyState();
}

class _SurveyState extends State<Survey> {
  final _firestore = FirebaseFirestore.instance;
  String name = "kir";
  String id = "1";
  String gender = "male";
  String dob = "12";
  String age = "19";
  var email;

  Future<void> gettingEmail() async {
    try {
      if (_auth != null) {
        final user = await _auth.currentUser;
        email = user;
      }
    } catch (e) {
      print(e);
    }
  }

  void initiateFirebase() async {
    await Firebase.initializeApp();
  }

  PageController controller = PageController();
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    initiateFirebase();
    gettingEmail();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        color: Colors.transparent,
        child: Stack(
          children: [
            PageView(
              children: [
                Body(
                  container: QuestionCard1(),
                ),
                Body(
                  container: QuestionCard2(),
                ),
                Body(
                  container: QuestionCard3(),
                ),
                Body(
                  container: QuestionCard4(),
                ),
                Body(
                  container: QuestionCard5(),
                ),
                Body(
                  container: QuestionCard6(),
                ),
                Body(
                  container: QuestionCard7(),
                ),
                Body(
                  container: QuestionCard8(),
                ),
                Body(
                  container: QuestionCard9(),
                ),
                Body(
                  container: QuestionCard10(),
                ),
                Body(
                  container: QuestionCard11(),
                ),
                Body(
                  container: QuestionCard12(),
                ),
                Body(
                  container: QuestionCard13(),
                ),
                Body(
                  container: QuestionCard14(),
                ),
                Body(
                  container: QuestionCard15(),
                ),
                Body(
                  container: QuestionCard16(),
                ),
                Body(
                  container: QuestionCard17(),
                ),
                Body(
                  container: QuestionCard18(),
                ),
                Body(
                  container: QuestionCard19(),
                ),
                Body(
                  container: QuestionCard20(),
                ),
                Body(
                  container: QuestionCard21(),
                ),
                Body(
                  container: QuestionCard22(),
                ),
                Body(
                  container: QuestionCard23(),
                ),
                Body(
                  container: QuestionCard24(),
                ),
                Body(
                  container: QuestionCard25(),
                ),
                Body(
                  container: QuestionCard26(),
                ),
                Body(
                  container: QuestionCard27(),
                ),
                Body(
                  container: QuestionCard28(),
                ),
                Body(
                  container: QuestionCard29(),
                ),
                Body(
                  container: QuestionCard30(),
                ),
                Body(
                  container: QuestionCard31(),
                ),
                Body(
                  container: QuestionCard32(),
                ),
                Body(
                  container: QuestionCard33(),
                ),
                Body(
                  container: QuestionCard34(),
                ),
                Body(
                  container: QuestionCard35(),
                ),
                Body(
                  container: QuestionCard36(),
                ),
                Body(
                  container: QuestionCard37(),
                ),
                Body(
                  container: QuestionCard38(),
                ),
                Body(
                  container: QuestionCard39(),
                ),
                Body(
                  container: QuestionCard40(),
                ),
                Body(
                  container: QuestionCard41(),
                ),
                Body(
                  container: QuestionCard42(),
                ),
                Body(
                  container: QuestionCard43(),
                ),
              ],
              controller: controller,
              onPageChanged: (num) {
                setState(() {
                  currentPage = num;
                  print(currentPage);
                });
              },
            ),
            Container(
              margin:
                  EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 730),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            controller.jumpToPage(currentPage - 1);
                          });
                        },
                        child: Center(
                          child: Container(
                            width: getProportionateScreenWidth(41),
                            height: getProportionateScreenWidth(41),
                            child: Center(
                              child: Icon(
                                Icons.arrow_back_ios_outlined,
                                size: getProportionateScreenHeight(20),
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white10.withOpacity(0.6)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          (currentPage + 1).toString(),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: getProportionateScreenWidth(20),
                            //fontFamily: "",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          " / 43",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.43),
                            fontSize: getProportionateScreenWidth(13),
                            //fontFamily: "",
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: currentPage != 42
                        ? ClipRect(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    controller.jumpToPage(currentPage + 1);
                                  });
                                },
                                child: Center(
                                  child: Container(
                                    width: getProportionateScreenWidth(41),
                                    height: getProportionateScreenWidth(41),
                                    child: Center(
                                      child: Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        size: 20,
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.white10.withOpacity(0.6)),
                                  ),
                                ),
                              ),
                            ),
                          )
                        : GestureDetector(
                            onTap: () async {
                              if (id != null) {
                                print("accessing database");

                                var time = DateTime.now().toString();
                                await _firestore
                                    .collection('LungCancer')
                                    .add({
                                      'name': '$name',
                                      'age': '$age',
                                      'patientid': '$id',
                                      'gender': '$gender',
                                      'datetime': '$time',
                                      'dob': '$dob',
                                      '01': '${resultList[0]}',
                                      '02': '${resultList[1]}',
                                      '03': '${resultList[2]}',
                                      '04': '${resultList[3]}',
                                      '05': '${resultList[4]}',
                                      '06': '${resultList[5]}',
                                      '07': '${resultList[6]}',
                                      '08': '${resultList[7]}',
                                      '09': '${resultList[8]}',
                                      '10': '${resultList[9]}',
                                      '11': '${resultList[10]}',
                                      '12': '${resultList[11]}',
                                      '13': '${resultList[12]}',
                                      '14': '${resultList[13]}',
                                      '15': '${resultList[14]}',
                                      '16': '${resultList[15]}',
                                      '17': '${resultList[16]}',
                                      '18': '${resultList[17]}',
                                      '19': '${resultList[18]}',
                                      '20': '${resultList[19]}',
                                      '21': '${resultList[20]}',
                                      '22': '${resultList[21]}',
                                      '23': '${resultList[22]}',
                                      '24': '${resultList[23]}',
                                      '25': '${resultList[24]}',
                                      '26': '${resultList[25]}',
                                      '27': '${resultList[26]}',
                                      '28': '${resultList[27]}',
                                      '29': '${resultList[28]}',
                                      '30': '${resultList[29]}',
                                      '31': '${resultList[30]}',
                                      '32': '${resultList[31]}',
                                      '33': '${resultList[32]}',
                                      '34': '${resultList[33]}',
                                      '35': '${resultList[34]}',
                                      '36': '${resultList[35]}',
                                      '37': '${resultList[36]}',
                                      '38': '${resultList[37]}',
                                      '39': '${resultList[38]}',
                                      '40': '${resultList[39]}',
                                      '41': '${resultList[40]}',
                                      '42': '${resultList[41]}',
                                      '43': '${resultList[42]}',
                                    })
                                    .then((value) => print("User Added"))
                                    .catchError((error) =>
                                        print("Failed to add user: $error"));
                                print('done');

                                await Fluttertoast.showToast(
                                  msg: "Successfully Updated",
                                  textColor: Color(0xffF8AD2C),
                                  backgroundColor: Colors.white,
                                );

                                //Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => MyApp()), (route) => false);
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Successful()));
                              } else {
                                await Fluttertoast.showToast(
                                  msg: "Please Check your Login Details",
                                  textColor: Color(0xffF8AD2C),
                                  backgroundColor: Colors.white,
                                );
                                //Navigator.pop(context);
                              }
                              print("tap");
                            },
                            child: Container(
                              width: getProportionateScreenWidth(93),
                              height: getProportionateScreenHeight(40),
                              child: Center(
                                child: Text(
                                  'Submit',
                                  style: TextStyle(
                                    fontFamily: 'GoogleSans',
                                    fontSize: getProportionateScreenWidth(24),
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xffFFA200).withOpacity(0.80),
                                borderRadius: BorderRadius.circular(11),
                              ),
                            ),
                          ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
