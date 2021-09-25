import 'dart:ui';

import 'package:cancer_app/sizeConfig.dart';
import 'package:flutter/material.dart';


class QuestionCard extends StatefulWidget {

  final List<List> answerTextList ;
  //[[text,width],[],...]
  String yourAnswer = "" ;

  QuestionCard({required this.answerTextList});



  @override
  _QuestionCardState createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    // String getAnswer(){
    //   return widget.yourAnswer ;
    // }
    return Container(
      padding: EdgeInsets.only(top: getProportionateScreenHeight(50), left: getProportionateScreenHeight(27), right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Carrying",
            style: TextStyle(
              color: Colors.black,
              fontSize: getProportionateScreenWidth(32),
              fontFamily: "Gilroy",
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(5),
          ),
          Row(
            children: [
              Container(
                width: getProportionateScreenWidth(103),
                height: getProportionateScreenHeight(40),
                child: Center(
                  child: Text(
                    'Heavy',
                    style: TextStyle(
                      fontFamily: 'GoogleSans',
                      fontSize: getProportionateScreenWidth(32),
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
              SizedBox(
                width: getProportionateScreenWidth(10),
              ),
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    Text(
                      "Weight",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: getProportionateScreenWidth(32),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(100),
                      height: getProportionateScreenHeight(10),
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Image.asset('assets/survey/underline/Underline.png'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(10),
              ),
              Text(
                "?",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(32),
                  //fontFamily: "",
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(50),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionButton(
                text: widget.answerTextList[0][0],
                textColor: widget.yourAnswer == widget.answerTextList[0][0] ? Colors.white :Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[0][0] ? Color(0xff2BAAE4) :Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[0][0] ? FontWeight.w900 : FontWeight.bold,
                boxWidth: getProportionateScreenWidth(widget.answerTextList[0][1]),
                onTap: (){
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[0][0] ;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[1][0],
                textColor: widget.yourAnswer == widget.answerTextList[1][0] ? Colors.white :Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[1][0] ? Color(0xff2BAAE4) :Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[1][0] ? FontWeight.w900 : FontWeight.bold,
                boxWidth: getProportionateScreenWidth(widget.answerTextList[1][1]),
                onTap: (){
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[1][0] ;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[2][0],
                textColor: widget.yourAnswer == widget.answerTextList[2][0] ? Colors.white :Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[2][0] ? Color(0xff2BAAE4) :Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[2][0] ? FontWeight.w900 : FontWeight.bold,
                boxWidth: getProportionateScreenWidth(widget.answerTextList[2][1]),
                onTap: (){
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[2][0] ;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[3][0],
                textColor: widget.yourAnswer == widget.answerTextList[3][0] ? Colors.white :Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[3][0] ? Color(0xff2BAAE4) :Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[3][0] ? FontWeight.w900 : FontWeight.bold,
                boxWidth: getProportionateScreenWidth(widget.answerTextList[3][1]),
                onTap: (){
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[3][0] ;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(50),
          ),
          Center(
            child: Text(
              "Are you able to carry suitcases?",
              style: TextStyle(
                color: Colors.black.withOpacity(0.46),
                fontSize: getProportionateScreenWidth(16),
                //fontFamily: "",
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OptionButton extends StatelessWidget {
  final String text;
  final Color buttonColor;
  final Color textColor;
  final FontWeight fontWeight;
  final double boxWidth;
  final void Function() onTap ;

  OptionButton({
    required this.text,
    required this.buttonColor,
    required this.textColor,
    required this.fontWeight,
    required this.boxWidth,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: boxWidth,
        height: getProportionateScreenHeight(40),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontFamily: 'GoogleSans',
              fontSize: getProportionateScreenWidth(15),
              color: textColor,
              fontWeight: fontWeight,
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
