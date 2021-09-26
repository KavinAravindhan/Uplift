import 'package:cancer_app/screens/survey/components/questionCard.dart';
import 'package:cancer_app/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'components/body.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_core/firebase_core.dart';
import'package:cancer_app/constants.dart' ;
import 'package:cancer_app/screens/login/components/signup.dart';

import 'components/successfullySubmitted.dart';

final _auth = FirebaseAuth.instance;
bool isTTS = true;

class Survey extends StatefulWidget {
  @override
  _SurveyState createState() => _SurveyState();
}

class _SurveyState extends State<Survey> {
  final _firestore = FirebaseFirestore.instance;
  //String name = ;
  String id = "1";
  //String gender = "male";
  //String dob = "12";
  String age = "18" ;
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
                  gifText: giflist[0],
                  speech: ttsList[0],
                ),
                Body(
                  container: QuestionCard2(),
                  gifText: giflist[1],
                  speech: ttsList[1],
                ),
                Body(
                  container: QuestionCard3(),
                  gifText: giflist[2],
                  speech: ttsList[2],
                ),
                Body(
                  container: QuestionCard4(),
                  gifText: giflist[3],
                  speech: ttsList[3],
                ),
                Body(
                  container: QuestionCard5(),
                  gifText: giflist[4],
                  speech: ttsList[4],
                ),
                Body(
                  container: QuestionCard6(),
                  gifText: giflist[5],
                  speech: ttsList[5],
                ),
                Body(
                  container: QuestionCard7(),
                  gifText: giflist[6],
                  speech: ttsList[6],
                ),
                Body(
                  container: QuestionCard8(),
                  gifText: giflist[7],
                  speech: ttsList[7],
                ),
                Body(
                  container: QuestionCard9(),
                  gifText: giflist[8],
                  speech: ttsList[8],
                ),
                Body(
                  container: QuestionCard10(),
                  gifText: giflist[9],
                  speech: ttsList[9],
                ),
                Body(
                  container: QuestionCard11(),
                  gifText: giflist[10],
                  speech: ttsList[10],
                ),
                Body(
                  container: QuestionCard12(),
                  gifText: giflist[11],
                  speech: ttsList[11],
                ),
                Body(
                  container: QuestionCard13(),
                  gifText: giflist[12],
                  speech: ttsList[12],
                ),
                Body(
                  container: QuestionCard14(),
                  gifText: giflist[13],
                  speech: ttsList[13],
                ),
                Body(
                  container: QuestionCard15(),
                  gifText: giflist[14],
                  speech: ttsList[14],
                ),
                Body(
                  container: QuestionCard16(),
                  gifText: giflist[15],
                  speech: ttsList[15],
                ),
                Body(
                  container: QuestionCard17(),
                  gifText: giflist[16],
                  speech: ttsList[16],
                ),
                Body(
                  container: QuestionCard18(),
                  gifText: giflist[17],
                  speech: ttsList[17],
                ),
                Body(
                  container: QuestionCard19(),
                  gifText: giflist[18],
                  speech: ttsList[18],
                ),
                Body(
                  container: QuestionCard20(),
                  gifText: giflist[19],
                  speech: ttsList[19],
                ),
                Body(
                  container: QuestionCard21(),
                  gifText: giflist[20],
                  speech: ttsList[20],
                ),
                Body(
                  container: QuestionCard22(),
                  gifText: giflist[21],
                  speech: ttsList[21],
                ),
                Body(
                  container: QuestionCard23(),
                  gifText: giflist[22],
                  speech: ttsList[22],
                ),
                Body(
                  container: QuestionCard24(),
                  gifText: giflist[23],
                  speech: ttsList[23],
                ),
                Body(
                  container: QuestionCard25(),
                  gifText: giflist[24],
                  speech: ttsList[24],
                ),
                Body(
                  container: QuestionCard26(),
                  gifText: giflist[25],
                  speech: ttsList[25],
                ),
                Body(
                  container: QuestionCard27(),
                  gifText: giflist[26],
                  speech: ttsList[26],
                ),
                Body(
                  container: QuestionCard28(),
                  gifText: giflist[27],
                  speech: ttsList[27],
                ),
                Body(
                  container: QuestionCard29(),
                  gifText: giflist[28],
                  speech: ttsList[28],
                ),
                Body(
                  container: QuestionCard30(),
                  gifText: giflist[29],
                  speech: ttsList[29],
                ),
                Body(
                  container: QuestionCard31(),
                  gifText: giflist[30],
                  speech: ttsList[30],
                ),
                Body(
                  container: QuestionCard32(),
                  gifText: giflist[31],
                  speech: ttsList[31],
                ),
                Body(
                  container: QuestionCard33(),
                  gifText: giflist[32],
                  speech: ttsList[32],
                ),
                Body(
                  container: QuestionCard34(),
                  gifText: giflist[33],
                  speech: ttsList[33],
                ),
                Body(
                  container: QuestionCard35(),
                  gifText: giflist[34],
                  speech: ttsList[34],
                ),
                Body(
                  container: QuestionCard36(),
                  gifText: giflist[35],
                  speech: ttsList[35],
                ),
                Body(
                  container: QuestionCard37(),
                  gifText: giflist[36],
                  speech: ttsList[36],
                ),
                Body(
                  container: QuestionCard38(),
                  gifText: giflist[37],
                  speech: ttsList[37],

                ),
                Body(
                  container: QuestionCard39(),
                  gifText: giflist[38],
                  speech: ttsList[38],
                ),
                Body(
                  container: QuestionCard40(),
                  gifText: giflist[39],
                  speech: ttsList[39],
                ),
                Body(
                  container: QuestionCard41(),
                  gifText: giflist[40],
                  speech: ttsList[40],
                ),
                Body(
                  container: QuestionCard42(),
                  gifText: giflist[41],
                  speech: ttsList[41],
                ),
                Body(
                  container: QuestionCard43(),
                  gifText: giflist[42],
                  speech: ttsList[42],
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
