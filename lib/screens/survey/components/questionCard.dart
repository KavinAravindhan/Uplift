import 'dart:ui';

import 'package:cancer_app/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:cancer_app/constants.dart';
import 'dart:convert';

var resultList = [
  "0",
  "0",
  "0",
  "0",
  "0",
  "0",
  "0",
  "0",
  "0",
  "0",
  "0",
  "0",
  "0",
  "0",
  "0",
  "0",
  "0",
  "0",
  "0",
  "0",
  "0",
  "0",
  "0",
  "0",
  "0",
  "0",
  "0",
  "0",
  "0",
  "0",
  "0",
  "0",
  "0",
  "0",
  "0",
  "0",
  "0",
  "0",
  "0",
  "0",
  "0",
  "0",
  "0"
];

class OptionButton extends StatelessWidget {
  final String text;
  final Color buttonColor;
  final Color textColor;
  final FontWeight fontWeight;
  final double boxWidth;
  final void Function() onTap;

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

class QuestionCard1 extends StatefulWidget {
  final List<List> answerTextList = [
    ["Not At All", 75.0],
    ["A Little", 80.0],
    ["Quite a Bit", 80.0],
    ["Very Much", 75.0]
  ];
  //[[text,width],[],...]
  String yourAnswer = resultList[0];

  @override
  _QuestionCard1State createState() => _QuestionCard1State();
}

class _QuestionCard1State extends State<QuestionCard1> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
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
                        child: Image.asset(
                            'assets/survey/underline/Underline.png'),
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
                textColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[0][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[0][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[0][0];
                    print(widget.yourAnswer);
                    resultList[0] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[1][0],
                textColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[1][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[1][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[1][0];
                    print(widget.yourAnswer);
                    resultList[0] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[2][0],
                textColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[2][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[2][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[2][0];
                    print(widget.yourAnswer);
                    resultList[0] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[3][0],
                textColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[3][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[3][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[3][0];
                    print(widget.yourAnswer);
                    resultList[0] = widget.yourAnswer;
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

class QuestionCard2 extends StatefulWidget {
  final List<List> answerTextList = [
    ["Not At All", 75.0],
    ["A Little", 80.0],
    ["Quite a Bit", 80.0],
    ["Very Much", 75.0]
  ];
  //[[text,width],[],...]
  String yourAnswer = resultList[1];

  @override
  _QuestionCard2State createState() => _QuestionCard2State();
}

class _QuestionCard2State extends State<QuestionCard2> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Trouble in",
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
                width: getProportionateScreenWidth(93),
                height: getProportionateScreenHeight(40),
                child: Center(
                  child: Text(
                    'Long',
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
                      "Walk",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: getProportionateScreenWidth(32),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(70),
                      height: getProportionateScreenHeight(10),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                            'assets/survey/underline/Underline.png'),
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
                textColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[0][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[0][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[0][0];
                    print(widget.yourAnswer);
                    resultList[1] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[1][0],
                textColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[1][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[1][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[1][0];
                    print(widget.yourAnswer);
                    resultList[1] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[2][0],
                textColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[2][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[2][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[2][0];
                    print(widget.yourAnswer);
                    resultList[1] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[3][0],
                textColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[3][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[3][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[3][0];
                    print(widget.yourAnswer);
                    resultList[1] = widget.yourAnswer;
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
              "Do you have any trouble taking a long walk?",
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

class QuestionCard3 extends StatefulWidget {
  final List<List> answerTextList = [
    ["Not At All", 75.0],
    ["A Little", 80.0],
    ["Quite a Bit", 80.0],
    ["Very Much", 75.0]
  ];
  //[[text,width],[],...]
  String yourAnswer = resultList[2];

  @override
  _QuestionCard3State createState() => _QuestionCard3State();
}

class _QuestionCard3State extends State<QuestionCard3> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Can't Go For",
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
                width: getProportionateScreenWidth(93),
                height: getProportionateScreenHeight(40),
                child: Center(
                  child: Text(
                    'Short',
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
                      "Walk",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: getProportionateScreenWidth(32),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(70),
                      height: getProportionateScreenHeight(10),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                            'assets/survey/underline/Underline.png'),
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
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionButton(
                text: widget.answerTextList[0][0],
                textColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[0][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[0][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[0][0];
                    print(widget.yourAnswer);
                    resultList[2] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[1][0],
                textColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[1][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[1][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[1][0];
                    print(widget.yourAnswer);
                    resultList[2] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[2][0],
                textColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[2][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[2][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[2][0];
                    print(widget.yourAnswer);
                    resultList[2] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[3][0],
                textColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[3][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[3][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[3][0];
                    print(widget.yourAnswer);
                    resultList[2] = widget.yourAnswer;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Center(
            child: Text(
              "Do you have any trouble taking a short walk outside of the house?",
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

class QuestionCard4 extends StatefulWidget {
  final List<List> answerTextList = [
    ["Not At All", 75.0],
    ["A Little", 80.0],
    ["Quite a Bit", 80.0],
    ["Very Much", 75.0]
  ];
  //[[text,width],[],...]
  String yourAnswer = resultList[3];

  @override
  _QuestionCard4State createState() => _QuestionCard4State();
}

class _QuestionCard4State extends State<QuestionCard4> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Resting",
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
                width: getProportionateScreenWidth(93),
                height: getProportionateScreenHeight(40),
                child: Center(
                  child: Text(
                    'All',
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
                      "Day",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: getProportionateScreenWidth(32),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(70),
                      height: getProportionateScreenHeight(10),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                            'assets/survey/underline/Underline.png'),
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
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionButton(
                text: widget.answerTextList[0][0],
                textColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[0][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[0][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[0][0];
                    print(widget.yourAnswer);
                    resultList[3] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[1][0],
                textColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[1][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[1][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[1][0];
                    print(widget.yourAnswer);
                    resultList[3] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[2][0],
                textColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[2][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[2][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[2][0];
                    print(widget.yourAnswer);
                    resultList[3] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[3][0],
                textColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[3][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[3][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[3][0];
                    print(widget.yourAnswer);
                    resultList[3] = widget.yourAnswer;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Center(
            child: Text(
              "Do you need to stay in bed or a chair during the day?",
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

class QuestionCard5 extends StatefulWidget {
  final List<List> answerTextList = [
    ["Not At All", 75.0],
    ["A Little", 80.0],
    ["Quite a Bit", 80.0],
    ["Very Much", 75.0]
  ];
  //[[text,width],[],...]
  String yourAnswer = resultList[4];

  @override
  _QuestionCard5State createState() => _QuestionCard5State();
}

class _QuestionCard5State extends State<QuestionCard5> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: getProportionateScreenWidth(123),
            height: getProportionateScreenHeight(40),
            child: Center(
              child: Text(
                'Depend',
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
            height: getProportionateScreenHeight(5),
          ),
          Row(
            children: [
              Text(
                "On",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(32),
                  fontFamily: "Gilroy",
                  fontWeight: FontWeight.w300,
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
                      "Others",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: getProportionateScreenWidth(32),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(70),
                      height: getProportionateScreenHeight(10),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                            'assets/survey/underline/Underline.png'),
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
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionButton(
                text: widget.answerTextList[0][0],
                textColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[0][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[0][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[0][0];
                    print(widget.yourAnswer);
                    resultList[4] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[1][0],
                textColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[1][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[1][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[1][0];
                    print(widget.yourAnswer);
                    resultList[4] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[2][0],
                textColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[2][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[2][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[2][0];
                    print(widget.yourAnswer);
                    resultList[4] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[3][0],
                textColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[3][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[3][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[3][0];
                    print(widget.yourAnswer);
                    resultList[4] = widget.yourAnswer;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Center(
            child: Text(
              "Do you need help with eating, dressing, washing yourself or using the toilet?",
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

class QuestionCard6 extends StatefulWidget {
  final List<List> answerTextList = [
    ["Not At All", 75.0],
    ["A Little", 80.0],
    ["Quite a Bit", 80.0],
    ["Very Much", 75.0]
  ];
  //[[text,width],[],...]
  String yourAnswer = resultList[5];

  @override
  _QuestionCard6State createState() => _QuestionCard6State();
}

class _QuestionCard6State extends State<QuestionCard6> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Limited in",
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
                width: getProportionateScreenWidth(93),
                height: getProportionateScreenHeight(40),
                child: Center(
                  child: Text(
                    'Your',
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
                      "Activities",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: getProportionateScreenWidth(32),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(70),
                      height: getProportionateScreenHeight(10),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                            'assets/survey/underline/Underline.png'),
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
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionButton(
                text: widget.answerTextList[0][0],
                textColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[0][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[0][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[0][0];
                    print(widget.yourAnswer);
                    resultList[5] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[1][0],
                textColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[1][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[1][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[1][0];
                    print(widget.yourAnswer);
                    resultList[5] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[2][0],
                textColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[2][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[2][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[2][0];
                    print(widget.yourAnswer);
                    resultList[5] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[3][0],
                textColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[3][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[3][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[3][0];
                    print(widget.yourAnswer);
                    resultList[5] = widget.yourAnswer;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Center(
            child: Text(
              "Were you limited in doing either your work or other daily activities?",
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

class QuestionCard7 extends StatefulWidget {
  final List<List> answerTextList = [
    ["Not At All", 75.0],
    ["A Little", 80.0],
    ["Quite a Bit", 80.0],
    ["Very Much", 75.0]
  ];
  //[[text,width],[],...]
  String yourAnswer = resultList[6];

  @override
  _QuestionCard7State createState() => _QuestionCard7State();
}

class _QuestionCard7State extends State<QuestionCard7> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "No",
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
                width: getProportionateScreenWidth(93),
                height: getProportionateScreenHeight(40),
                child: Center(
                  child: Text(
                    'Happy',
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
                      "Time",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: getProportionateScreenWidth(32),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(70),
                      height: getProportionateScreenHeight(10),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                            'assets/survey/underline/Underline.png'),
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
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionButton(
                text: widget.answerTextList[0][0],
                textColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[0][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[0][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[0][0];
                    print(widget.yourAnswer);
                    resultList[6] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[1][0],
                textColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[1][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[1][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[1][0];
                    print(widget.yourAnswer);
                    resultList[6] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[2][0],
                textColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[2][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[2][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[2][0];
                    print(widget.yourAnswer);
                    resultList[6] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[3][0],
                textColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[3][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[3][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[3][0];
                    print(widget.yourAnswer);
                    resultList[6] = widget.yourAnswer;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Center(
            child: Text(
              "Were you limited in pursuing your hobbies or other leisure time activities?",
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

class QuestionCard8 extends StatefulWidget {
  final List<List> answerTextList = [
    ["Not At All", 75.0],
    ["A Little", 80.0],
    ["Quite a Bit", 80.0],
    ["Very Much", 75.0]
  ];
  //[[text,width],[],...]
  String yourAnswer = resultList[7];

  @override
  _QuestionCard8State createState() => _QuestionCard8State();
}

class _QuestionCard8State extends State<QuestionCard8> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Short",
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
                width: getProportionateScreenWidth(93),
                height: getProportionateScreenHeight(40),
                child: Center(
                  child: Text(
                    'Of',
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
                      "Breath",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: getProportionateScreenWidth(32),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(70),
                      height: getProportionateScreenHeight(10),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                            'assets/survey/underline/Underline.png'),
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
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionButton(
                text: widget.answerTextList[0][0],
                textColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[0][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[0][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[0][0];
                    print(widget.yourAnswer);
                    resultList[7] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[1][0],
                textColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[1][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[1][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[1][0];
                    print(widget.yourAnswer);
                    resultList[7] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[2][0],
                textColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[2][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[2][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[2][0];
                    print(widget.yourAnswer);
                    resultList[7] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[3][0],
                textColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[3][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[3][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[3][0];
                    print(widget.yourAnswer);
                    resultList[7] = widget.yourAnswer;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Center(
            child: Text(
              "Were you short of breath?",
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

class QuestionCard9 extends StatefulWidget {
  final List<List> answerTextList = [
    ["Not At All", 75.0],
    ["A Little", 80.0],
    ["Quite a Bit", 80.0],
    ["Very Much", 75.0]
  ];
  //[[text,width],[],...]
  String yourAnswer = resultList[8];

  @override
  _QuestionCard9State createState() => _QuestionCard9State();
}

class _QuestionCard9State extends State<QuestionCard9> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Row(
            children: [
              Container(
                width: getProportionateScreenWidth(93),
                height: getProportionateScreenHeight(40),
                child: Center(
                  child: Text(
                    'Had',
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
                      "Pain",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: getProportionateScreenWidth(32),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(70),
                      height: getProportionateScreenHeight(10),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                            'assets/survey/underline/Underline.png'),
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
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionButton(
                text: widget.answerTextList[0][0],
                textColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[0][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[0][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[0][0];
                    print(widget.yourAnswer);
                    resultList[8] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[1][0],
                textColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[1][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[1][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[1][0];
                    print(widget.yourAnswer);
                    resultList[8] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[2][0],
                textColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[2][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[2][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[2][0];
                    print(widget.yourAnswer);
                    resultList[8] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[3][0],
                textColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[3][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[3][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[3][0];
                    print(widget.yourAnswer);
                    resultList[8] = widget.yourAnswer;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Center(
            child: Text(
              "Have you had pain?",
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

class QuestionCard10 extends StatefulWidget {
  final List<List> answerTextList = [
    ["Not At All", 75.0],
    ["A Little", 80.0],
    ["Quite a Bit", 80.0],
    ["Very Much", 75.0]
  ];
  //[[text,width],[],...]
  String yourAnswer = resultList[9];

  @override
  _QuestionCard10State createState() => _QuestionCard10State();
}

class _QuestionCard10State extends State<QuestionCard10> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Need",
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
                width: getProportionateScreenWidth(93),
                height: getProportionateScreenHeight(40),
                child: Center(
                  child: Text(
                    'To',
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
                      "Rest",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: getProportionateScreenWidth(32),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(70),
                      height: getProportionateScreenHeight(10),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                            'assets/survey/underline/Underline.png'),
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
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionButton(
                text: widget.answerTextList[0][0],
                textColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[0][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[0][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[0][0];
                    print(widget.yourAnswer);
                    resultList[9] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[1][0],
                textColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[1][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[1][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[1][0];
                    print(widget.yourAnswer);
                    resultList[9] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[2][0],
                textColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[2][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[2][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[2][0];
                    print(widget.yourAnswer);
                    resultList[9] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[3][0],
                textColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[3][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[3][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[3][0];
                    print(widget.yourAnswer);
                    resultList[9] = widget.yourAnswer;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Center(
            child: Text(
              "Did you need to rest?",
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

class QuestionCard11 extends StatefulWidget {
  final List<List> answerTextList = [
    ["Not At All", 75.0],
    ["A Little", 80.0],
    ["Quite a Bit", 80.0],
    ["Very Much", 75.0]
  ];
  //[[text,width],[],...]
  String yourAnswer = resultList[10];

  @override
  _QuestionCard11State createState() => _QuestionCard11State();
}

class _QuestionCard11State extends State<QuestionCard11> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Trouble",
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
                width: getProportionateScreenWidth(93),
                height: getProportionateScreenHeight(40),
                child: Center(
                  child: Text(
                    'In',
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
                      "Sleeping",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: getProportionateScreenWidth(32),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(70),
                      height: getProportionateScreenHeight(10),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                            'assets/survey/underline/Underline.png'),
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
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionButton(
                text: widget.answerTextList[0][0],
                textColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[0][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[0][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[0][0];
                    print(widget.yourAnswer);
                    resultList[10] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[1][0],
                textColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[1][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[1][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[1][0];
                    print(widget.yourAnswer);
                    resultList[10] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[2][0],
                textColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[2][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[2][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[2][0];
                    print(widget.yourAnswer);
                    resultList[10] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[3][0],
                textColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[3][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[3][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[3][0];
                    print(widget.yourAnswer);
                    resultList[10] = widget.yourAnswer;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Center(
            child: Text(
              "Have you had trouble sleeping?",
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

class QuestionCard12 extends StatefulWidget {
  final List<List> answerTextList = [
    ["Not At All", 75.0],
    ["A Little", 80.0],
    ["Quite a Bit", 80.0],
    ["Very Much", 75.0]
  ];
  //[[text,width],[],...]
  String yourAnswer = resultList[11];

  @override
  _QuestionCard12State createState() => _QuestionCard12State();
}

class _QuestionCard12State extends State<QuestionCard12> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Row(
            children: [
              Container(
                width: getProportionateScreenWidth(123),
                height: getProportionateScreenHeight(40),
                child: Center(
                  child: Text(
                    'Feeling',
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
                      "Weak",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: getProportionateScreenWidth(32),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(70),
                      height: getProportionateScreenHeight(10),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                            'assets/survey/underline/Underline.png'),
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
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionButton(
                text: widget.answerTextList[0][0],
                textColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[0][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[0][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[0][0];
                    print(widget.yourAnswer);
                    resultList[11] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[1][0],
                textColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[1][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[1][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[1][0];
                    print(widget.yourAnswer);
                    resultList[11] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[2][0],
                textColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[2][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[2][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[2][0];
                    print(widget.yourAnswer);
                    resultList[11] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[3][0],
                textColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[3][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[3][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[3][0];
                    print(widget.yourAnswer);
                    resultList[11] = widget.yourAnswer;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Center(
            child: Text(
              "Have you felt weak?",
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

class QuestionCard13 extends StatefulWidget {
  final List<List> answerTextList = [
    ["Not At All", 75.0],
    ["A Little", 80.0],
    ["Quite a Bit", 80.0],
    ["Very Much", 75.0]
  ];
  //[[text,width],[],...]
  String yourAnswer = resultList[12];

  @override
  _QuestionCard13State createState() => _QuestionCard13State();
}

class _QuestionCard13State extends State<QuestionCard13> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: getProportionateScreenWidth(93),
            height: getProportionateScreenHeight(40),
            child: Center(
              child: Text(
                'Lack',
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
            height: getProportionateScreenHeight(5),
          ),
          Row(
            children: [
              Text(
                "of",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(32),
                  fontFamily: "Gilroy",
                  fontWeight: FontWeight.w300,
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
                      "Appetite",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: getProportionateScreenWidth(32),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(70),
                      height: getProportionateScreenHeight(10),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                            'assets/survey/underline/Underline.png'),
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
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionButton(
                text: widget.answerTextList[0][0],
                textColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[0][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[0][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[0][0];
                    print(widget.yourAnswer);
                    resultList[12] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[1][0],
                textColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[1][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[1][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[1][0];
                    print(widget.yourAnswer);
                    resultList[12] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[2][0],
                textColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[2][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[2][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[2][0];
                    print(widget.yourAnswer);
                    resultList[12] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[3][0],
                textColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[3][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[3][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[3][0];
                    print(widget.yourAnswer);
                    resultList[12] = widget.yourAnswer;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Center(
            child: Text(
              "Have you lacked appetite?",
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

class QuestionCard14 extends StatefulWidget {
  final List<List> answerTextList = [
    ["Not At All", 75.0],
    ["A Little", 80.0],
    ["Quite a Bit", 80.0],
    ["Very Much", 75.0]
  ];
  //[[text,width],[],...]
  String yourAnswer = resultList[13];

  @override
  _QuestionCard14State createState() => _QuestionCard14State();
}

class _QuestionCard14State extends State<QuestionCard14> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Row(
            children: [
              Container(
                width: getProportionateScreenWidth(93),
                height: getProportionateScreenHeight(40),
                child: Center(
                  child: Text(
                    'Felt',
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
                      "Nauseated",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: getProportionateScreenWidth(32),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(70),
                      height: getProportionateScreenHeight(10),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                            'assets/survey/underline/Underline.png'),
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
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionButton(
                text: widget.answerTextList[0][0],
                textColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[0][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[0][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[0][0];
                    print(widget.yourAnswer);
                    resultList[13] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[1][0],
                textColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[1][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[1][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[1][0];
                    print(widget.yourAnswer);
                    resultList[13] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[2][0],
                textColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[2][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[2][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[2][0];
                    print(widget.yourAnswer);
                    resultList[13] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[3][0],
                textColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[3][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[3][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[3][0];
                    print(widget.yourAnswer);
                    resultList[13] = widget.yourAnswer;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Center(
            child: Text(
              "Have you felt nauseated?",
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

class QuestionCard15 extends StatefulWidget {
  final List<List> answerTextList = [
    ["Not At All", 75.0],
    ["A Little", 80.0],
    ["Quite a Bit", 80.0],
    ["Very Much", 75.0]
  ];
  //[[text,width],[],...]
  String yourAnswer = resultList[14];

  @override
  _QuestionCard15State createState() => _QuestionCard15State();
}

class _QuestionCard15State extends State<QuestionCard15> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Have",
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
                width: getProportionateScreenWidth(93),
                height: getProportionateScreenHeight(40),
                child: Center(
                  child: Text(
                    'You',
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
                      "Vomitted",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: getProportionateScreenWidth(32),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(70),
                      height: getProportionateScreenHeight(10),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                            'assets/survey/underline/Underline.png'),
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
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionButton(
                text: widget.answerTextList[0][0],
                textColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[0][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[0][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[0][0];
                    print(widget.yourAnswer);
                    resultList[14] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[1][0],
                textColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[1][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[1][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[1][0];
                    print(widget.yourAnswer);
                    resultList[14] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[2][0],
                textColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[2][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[2][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[2][0];
                    print(widget.yourAnswer);
                    resultList[14] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[3][0],
                textColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[3][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[3][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[3][0];
                    print(widget.yourAnswer);
                    resultList[14] = widget.yourAnswer;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Center(
            child: Text(
              "Have you Vomited?",
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

class QuestionCard16 extends StatefulWidget {
  final List<List> answerTextList = [
    ["Not At All", 75.0],
    ["A Little", 80.0],
    ["Quite a Bit", 80.0],
    ["Very Much", 75.0]
  ];
  //[[text,width],[],...]
  String yourAnswer = resultList[15];

  @override
  _QuestionCard16State createState() => _QuestionCard16State();
}

class _QuestionCard16State extends State<QuestionCard16> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Row(
            children: [
              Container(
                width: getProportionateScreenWidth(93),
                height: getProportionateScreenHeight(40),
                child: Center(
                  child: Text(
                    'Been',
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
                      "Constipated",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: getProportionateScreenWidth(32),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(70),
                      height: getProportionateScreenHeight(10),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                            'assets/survey/underline/Underline.png'),
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
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionButton(
                text: widget.answerTextList[0][0],
                textColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[0][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[0][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[0][0];
                    print(widget.yourAnswer);
                    resultList[15] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[1][0],
                textColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[1][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[1][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[1][0];
                    print(widget.yourAnswer);
                    resultList[15] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[2][0],
                textColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[2][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[2][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[2][0];
                    print(widget.yourAnswer);
                    resultList[15] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[3][0],
                textColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[3][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[3][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[3][0];
                    print(widget.yourAnswer);
                    resultList[15] = widget.yourAnswer;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Center(
            child: Text(
              "Have you been constipated?",
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

class QuestionCard17 extends StatefulWidget {
  final List<List> answerTextList = [
    ["Not At All", 75.0],
    ["A Little", 80.0],
    ["Quite a Bit", 80.0],
    ["Very Much", 75.0]
  ];
  //[[text,width],[],...]
  String yourAnswer = resultList[16];

  @override
  _QuestionCard17State createState() => _QuestionCard17State();
}

class _QuestionCard17State extends State<QuestionCard17> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Have You",
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
                width: getProportionateScreenWidth(93),
                height: getProportionateScreenHeight(40),
                child: Center(
                  child: Text(
                    'Had',
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
                      "Diarrhea",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: getProportionateScreenWidth(32),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(70),
                      height: getProportionateScreenHeight(10),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                            'assets/survey/underline/Underline.png'),
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
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionButton(
                text: widget.answerTextList[0][0],
                textColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[0][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[0][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[0][0];
                    print(widget.yourAnswer);
                    resultList[16] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[1][0],
                textColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[1][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[1][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[1][0];
                    print(widget.yourAnswer);
                    resultList[16] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[2][0],
                textColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[2][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[2][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[2][0];
                    print(widget.yourAnswer);
                    resultList[16] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[3][0],
                textColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[3][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[3][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[3][0];
                    print(widget.yourAnswer);
                    resultList[16] = widget.yourAnswer;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Center(
            child: Text(
              "Have you had diarrhea?",
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

class QuestionCard18 extends StatefulWidget {
  final List<List> answerTextList = [
    ["Not At All", 75.0],
    ["A Little", 80.0],
    ["Quite a Bit", 80.0],
    ["Very Much", 75.0]
  ];
  //[[text,width],[],...]
  String yourAnswer = resultList[17];

  @override
  _QuestionCard18State createState() => _QuestionCard18State();
}

class _QuestionCard18State extends State<QuestionCard18> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Were",
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
                width: getProportionateScreenWidth(93),
                height: getProportionateScreenHeight(40),
                child: Center(
                  child: Text(
                    'You',
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
                      "Tired",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: getProportionateScreenWidth(32),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(70),
                      height: getProportionateScreenHeight(10),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                            'assets/survey/underline/Underline.png'),
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
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionButton(
                text: widget.answerTextList[0][0],
                textColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[0][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[0][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[0][0];
                    print(widget.yourAnswer);
                    resultList[17] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[1][0],
                textColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[1][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[1][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[1][0];
                    print(widget.yourAnswer);
                    resultList[17] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[2][0],
                textColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[2][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[2][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[2][0];
                    print(widget.yourAnswer);
                    resultList[17] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[3][0],
                textColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[3][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[3][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[3][0];
                    print(widget.yourAnswer);
                    resultList[17] = widget.yourAnswer;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Center(
            child: Text(
              "Were you tired?",
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

class QuestionCard19 extends StatefulWidget {
  final List<List> answerTextList = [
    ["Not At All", 75.0],
    ["A Little", 80.0],
    ["Quite a Bit", 80.0],
    ["Very Much", 75.0]
  ];
  //[[text,width],[],...]
  String yourAnswer = resultList[18];

  @override
  _QuestionCard19State createState() => _QuestionCard19State();
}

class _QuestionCard19State extends State<QuestionCard19> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Pain interfered",
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
                width: getProportionateScreenWidth(93),
                height: getProportionateScreenHeight(40),
                child: Center(
                  child: Text(
                    'Your',
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
                      "Activities",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: getProportionateScreenWidth(32),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(70),
                      height: getProportionateScreenHeight(10),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                            'assets/survey/underline/Underline.png'),
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
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionButton(
                text: widget.answerTextList[0][0],
                textColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[0][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[0][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[0][0];
                    print(widget.yourAnswer);
                    resultList[18] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[1][0],
                textColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[1][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[1][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[1][0];
                    print(widget.yourAnswer);
                    resultList[18] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[2][0],
                textColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[2][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[2][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[2][0];
                    print(widget.yourAnswer);
                    resultList[18] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[3][0],
                textColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[3][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[3][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[3][0];
                    print(widget.yourAnswer);
                    resultList[18] = widget.yourAnswer;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Center(
            child: Text(
              "Did pain interfere with your daily activities? ",
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

class QuestionCard20 extends StatefulWidget {
  final List<List> answerTextList = [
    ["Not At All", 75.0],
    ["A Little", 80.0],
    ["Quite a Bit", 80.0],
    ["Very Much", 75.0]
  ];
  //[[text,width],[],...]
  String yourAnswer = resultList[19];

  @override
  _QuestionCard20State createState() => _QuestionCard20State();
}

class _QuestionCard20State extends State<QuestionCard20> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: getProportionateScreenWidth(93),
            height: getProportionateScreenHeight(40),
            child: Center(
              child: Text(
                'Lack',
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
            height: getProportionateScreenHeight(5),
          ),
          Row(
            children: [
              Text(
                "of",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(32),
                  fontFamily: "Gilroy",
                  fontWeight: FontWeight.w300,
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
                      "Concentration",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: getProportionateScreenWidth(32),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(70),
                      height: getProportionateScreenHeight(10),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                            'assets/survey/underline/Underline.png'),
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
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionButton(
                text: widget.answerTextList[0][0],
                textColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[0][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[0][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[0][0];
                    print(widget.yourAnswer);
                    resultList[19] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[1][0],
                textColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[1][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[1][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[1][0];
                    print(widget.yourAnswer);
                    resultList[19] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[2][0],
                textColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[2][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[2][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[2][0];
                    print(widget.yourAnswer);
                    resultList[19] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[3][0],
                textColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[3][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[3][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[3][0];
                    print(widget.yourAnswer);
                    resultList[19] = widget.yourAnswer;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Center(
            child: Text(
              "Have you had difficulty in concentrating on things, like reading a newspaper or watching television?",
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

class QuestionCard21 extends StatefulWidget {
  final List<List> answerTextList = [
    ["Not At All", 75.0],
    ["A Little", 80.0],
    ["Quite a Bit", 80.0],
    ["Very Much", 75.0]
  ];
  //[[text,width],[],...]
  String yourAnswer = resultList[20];

  @override
  _QuestionCard21State createState() => _QuestionCard21State();
}

class _QuestionCard21State extends State<QuestionCard21> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Did you",
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
                width: getProportionateScreenWidth(93),
                height: getProportionateScreenHeight(40),
                child: Center(
                  child: Text(
                    'Feel',
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
                      "Tensed",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: getProportionateScreenWidth(32),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(70),
                      height: getProportionateScreenHeight(10),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                            'assets/survey/underline/Underline.png'),
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
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionButton(
                text: widget.answerTextList[0][0],
                textColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[0][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[0][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[0][0];
                    print(widget.yourAnswer);
                    resultList[20] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[1][0],
                textColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[1][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[1][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[1][0];
                    print(widget.yourAnswer);
                    resultList[20] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[2][0],
                textColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[2][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[2][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[2][0];
                    print(widget.yourAnswer);
                    resultList[20] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[3][0],
                textColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[3][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[3][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[3][0];
                    print(widget.yourAnswer);
                    resultList[20] = widget.yourAnswer;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Center(
            child: Text(
              "Whether you feel tense?",
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

class QuestionCard22 extends StatefulWidget {
  final List<List> answerTextList = [
    ["Not At All", 75.0],
    ["A Little", 80.0],
    ["Quite a Bit", 80.0],
    ["Very Much", 75.0]
  ];
  //[[text,width],[],...]
  String yourAnswer = resultList[21];

  @override
  _QuestionCard22State createState() => _QuestionCard22State();
}

class _QuestionCard22State extends State<QuestionCard22> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Are",
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
                width: getProportionateScreenWidth(93),
                height: getProportionateScreenHeight(40),
                child: Center(
                  child: Text(
                    'You',
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
                      "Worried",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: getProportionateScreenWidth(32),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(70),
                      height: getProportionateScreenHeight(10),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                            'assets/survey/underline/Underline.png'),
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
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionButton(
                text: widget.answerTextList[0][0],
                textColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[0][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[0][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[0][0];
                    print(widget.yourAnswer);
                    resultList[21] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[1][0],
                textColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[1][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[1][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[1][0];
                    print(widget.yourAnswer);
                    resultList[21] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[2][0],
                textColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[2][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[2][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[2][0];
                    print(widget.yourAnswer);
                    resultList[21] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[3][0],
                textColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[3][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[3][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[3][0];
                    print(widget.yourAnswer);
                    resultList[21] = widget.yourAnswer;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Center(
            child: Text(
              "Did you feel worried?",
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

class QuestionCard23 extends StatefulWidget {
  final List<List> answerTextList = [
    ["Not At All", 75.0],
    ["A Little", 80.0],
    ["Quite a Bit", 80.0],
    ["Very Much", 75.0]
  ];
  //[[text,width],[],...]
  String yourAnswer = resultList[22];

  @override
  _QuestionCard23State createState() => _QuestionCard23State();
}

class _QuestionCard23State extends State<QuestionCard23> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Did you",
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
                width: getProportionateScreenWidth(93),
                height: getProportionateScreenHeight(40),
                child: Center(
                  child: Text(
                    'Feel',
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
                      "Irritable",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: getProportionateScreenWidth(32),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(70),
                      height: getProportionateScreenHeight(10),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                            'assets/survey/underline/Underline.png'),
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
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionButton(
                text: widget.answerTextList[0][0],
                textColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[0][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[0][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[0][0];
                    print(widget.yourAnswer);
                    resultList[22] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[1][0],
                textColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[1][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[1][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[1][0];
                    print(widget.yourAnswer);
                    resultList[22] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[2][0],
                textColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[2][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[2][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[2][0];
                    print(widget.yourAnswer);
                    resultList[22] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[3][0],
                textColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[3][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[3][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[3][0];
                    print(widget.yourAnswer);
                    resultList[22] = widget.yourAnswer;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Center(
            child: Text(
              "Whether you feel irritable?",
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

class QuestionCard24 extends StatefulWidget {
  final List<List> answerTextList = [
    ["Not At All", 75.0],
    ["A Little", 80.0],
    ["Quite a Bit", 80.0],
    ["Very Much", 75.0]
  ];
  //[[text,width],[],...]
  String yourAnswer = resultList[23];

  @override
  _QuestionCard24State createState() => _QuestionCard24State();
}

class _QuestionCard24State extends State<QuestionCard24> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Did you",
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
                width: getProportionateScreenWidth(93),
                height: getProportionateScreenHeight(40),
                child: Center(
                  child: Text(
                    'Feel',
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
                      "Depressed",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: getProportionateScreenWidth(32),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(70),
                      height: getProportionateScreenHeight(10),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                            'assets/survey/underline/Underline.png'),
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
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionButton(
                text: widget.answerTextList[0][0],
                textColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[0][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[0][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[0][0];
                    print(widget.yourAnswer);
                    resultList[23] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[1][0],
                textColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[1][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[1][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[1][0];
                    print(widget.yourAnswer);
                    resultList[23] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[2][0],
                textColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[2][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[2][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[2][0];
                    print(widget.yourAnswer);
                    resultList[23] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[3][0],
                textColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[3][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[3][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[3][0];
                    print(widget.yourAnswer);
                    resultList[23] = widget.yourAnswer;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Center(
            child: Text(
              "Did you feel depressed?",
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

class QuestionCard25 extends StatefulWidget {
  final List<List> answerTextList = [
    ["Not At All", 75.0],
    ["A Little", 80.0],
    ["Quite a Bit", 80.0],
    ["Very Much", 75.0]
  ];
  //[[text,width],[],...]
  String yourAnswer = resultList[24];

  @override
  _QuestionCard25State createState() => _QuestionCard25State();
}

class _QuestionCard25State extends State<QuestionCard25> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Row(
            children: [
              Container(
                width: getProportionateScreenWidth(93),
                height: getProportionateScreenHeight(40),
                child: Center(
                  child: Text(
                    'Foggy',
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
                      "Memory",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: getProportionateScreenWidth(32),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(70),
                      height: getProportionateScreenHeight(10),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                            'assets/survey/underline/Underline.png'),
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
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionButton(
                text: widget.answerTextList[0][0],
                textColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[0][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[0][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[0][0];
                    print(widget.yourAnswer);
                    resultList[24] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[1][0],
                textColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[1][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[1][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[1][0];
                    print(widget.yourAnswer);
                    resultList[24] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[2][0],
                textColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[2][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[2][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[2][0];
                    print(widget.yourAnswer);
                    resultList[24] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[3][0],
                textColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[3][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[3][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[3][0];
                    print(widget.yourAnswer);
                    resultList[24] = widget.yourAnswer;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Center(
            child: Text(
              "Have you had difficulty remembering things?",
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

class QuestionCard26 extends StatefulWidget {
  final List<List> answerTextList = [
    ["Not At All", 75.0],
    ["A Little", 80.0],
    ["Quite a Bit", 80.0],
    ["Very Much", 75.0]
  ];
  //[[text,width],[],...]
  String yourAnswer = resultList[25];

  @override
  _QuestionCard26State createState() => _QuestionCard26State();
}

class _QuestionCard26State extends State<QuestionCard26> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Health Issues interfere with",
            style: TextStyle(
              color: Colors.black,
              fontSize: getProportionateScreenWidth(24),
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
                width: getProportionateScreenWidth(123),
                height: getProportionateScreenHeight(40),
                child: Center(
                  child: Text(
                    'Family',
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
                      "Life",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: getProportionateScreenWidth(32),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(70),
                      height: getProportionateScreenHeight(10),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                            'assets/survey/underline/Underline.png'),
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
            height: getProportionateScreenHeight(30),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionButton(
                text: widget.answerTextList[0][0],
                textColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[0][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[0][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[0][0];
                    print(widget.yourAnswer);
                    resultList[25] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[1][0],
                textColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[1][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[1][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[1][0];
                    print(widget.yourAnswer);
                    resultList[25] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[2][0],
                textColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[2][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[2][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[2][0];
                    print(widget.yourAnswer);
                    resultList[25] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[3][0],
                textColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[3][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[3][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[3][0];
                    print(widget.yourAnswer);
                    resultList[25] = widget.yourAnswer;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          Center(
            child: Text(
              "Has your physical condition or medical treatment interfered with your family life? ",
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

class QuestionCard27 extends StatefulWidget {
  final List<List> answerTextList = [
    ["Not At All", 75.0],
    ["A Little", 80.0],
    ["Quite a Bit", 80.0],
    ["Very Much", 75.0]
  ];
  //[[text,width],[],...]
  String yourAnswer = resultList[26];

  @override
  _QuestionCard27State createState() => _QuestionCard27State();
}

class _QuestionCard27State extends State<QuestionCard27> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Health Issues Interfere with",
            style: TextStyle(
              color: Colors.black,
              fontSize: getProportionateScreenWidth(24),
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
                width: getProportionateScreenWidth(93),
                height: getProportionateScreenHeight(40),
                child: Center(
                  child: Text(
                    'Social',
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
                      "Life",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: getProportionateScreenWidth(32),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(70),
                      height: getProportionateScreenHeight(10),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                            'assets/survey/underline/Underline.png'),
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
            height: getProportionateScreenHeight(30),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionButton(
                text: widget.answerTextList[0][0],
                textColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[0][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[0][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[0][0];
                    print(widget.yourAnswer);
                    resultList[26] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[1][0],
                textColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[1][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[1][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[1][0];
                    print(widget.yourAnswer);
                    resultList[26] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[2][0],
                textColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[2][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[2][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[2][0];
                    print(widget.yourAnswer);
                    resultList[26] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[3][0],
                textColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[3][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[3][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[3][0];
                    print(widget.yourAnswer);
                    resultList[26] = widget.yourAnswer;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          Center(
            child: Text(
              "Has your physical condition or medical treatment interfered with your social activities?",
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

class QuestionCard28 extends StatefulWidget {
  final List<List> answerTextList = [
    ["Not At All", 75.0],
    ["A Little", 80.0],
    ["Quite a Bit", 80.0],
    ["Very Much", 75.0]
  ];
  //[[text,width],[],...]
  String yourAnswer = resultList[27];

  @override
  _QuestionCard28State createState() => _QuestionCard28State();
}

class _QuestionCard28State extends State<QuestionCard28> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Financial issues due to",
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
                width: getProportionateScreenWidth(93),
                height: getProportionateScreenHeight(40),
                child: Center(
                  child: Text(
                    'Your',
                    style: TextStyle(
                      fontFamily: 'GoogleSans',
                      fontSize: getProportionateScreenWidth(26),
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
                      "Treatment",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: getProportionateScreenWidth(32),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(70),
                      height: getProportionateScreenHeight(10),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                            'assets/survey/underline/Underline.png'),
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
            height: getProportionateScreenHeight(30),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionButton(
                text: widget.answerTextList[0][0],
                textColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[0][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[0][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[0][0];
                    print(widget.yourAnswer);
                    resultList[27] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[1][0],
                textColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[1][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[1][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[1][0];
                    print(widget.yourAnswer);
                    resultList[27] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[2][0],
                textColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[2][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[2][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[2][0];
                    print(widget.yourAnswer);
                    resultList[27] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[3][0],
                textColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[3][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[3][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[3][0];
                    print(widget.yourAnswer);
                    resultList[27] = widget.yourAnswer;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          Center(
            child: Text(
              "Has your physical condition or medical treatment caused you financial difficulties?",
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

class QuestionCard29 extends StatefulWidget {
  final List<List> answerTextList = [
    ["1", 40.0],
    ["2", 40.0],
    ["3", 40.0],
    ["4", 40.0],
    ["5", 40.0],
    ["6", 40.0],
    ["7", 40.0]
  ];
  //[[text,width],[],...]
  String yourAnswer = resultList[28];

  @override
  _QuestionCard29State createState() => _QuestionCard29State();
}

class _QuestionCard29State extends State<QuestionCard29> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Rate your",
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
                width: getProportionateScreenWidth(123),
                height: getProportionateScreenHeight(40),
                child: Center(
                  child: Text(
                    'Overall',
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
                      "Health",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: getProportionateScreenWidth(32),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(70),
                      height: getProportionateScreenHeight(10),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                            'assets/survey/underline/Underline.png'),
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
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionButton(
                text: widget.answerTextList[0][0],
                textColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[0][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[0][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[0][0];
                    print(widget.yourAnswer);
                    resultList[28] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[1][0],
                textColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[1][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[1][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[1][0];
                    print(widget.yourAnswer);
                    resultList[28] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[2][0],
                textColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[2][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[2][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[2][0];
                    print(widget.yourAnswer);
                    resultList[28] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[3][0],
                textColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[3][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[3][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[3][0];
                    print(widget.yourAnswer);
                    resultList[28] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[4][0],
                textColor: widget.yourAnswer == widget.answerTextList[4][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[4][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[4][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                getProportionateScreenWidth(widget.answerTextList[4][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[4][0];
                    print(widget.yourAnswer);
                    resultList[28] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[5][0],
                textColor: widget.yourAnswer == widget.answerTextList[5][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[5][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[5][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                getProportionateScreenWidth(widget.answerTextList[5][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[5][0];
                    print(widget.yourAnswer);
                    resultList[28] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[6][0],
                textColor: widget.yourAnswer == widget.answerTextList[6][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[6][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[6][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                getProportionateScreenWidth(widget.answerTextList[6][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[6][0];
                    print(widget.yourAnswer);
                    resultList[28] = widget.yourAnswer;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Center(
            child: Text(
              "How would you rate your overall health during the past week?",
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

class QuestionCard30 extends StatefulWidget {
  final List<List> answerTextList = [
    ["1", 40.0],
    ["2", 40.0],
    ["3", 40.0],
    ["4", 40.0],
    ["5", 40.0],
    ["6", 40.0],
    ["7", 40.0]
  ];
  //[[text,width],[],...]
  String yourAnswer = resultList[29];

  @override
  _QuestionCard30State createState() => _QuestionCard30State();
}

class _QuestionCard30State extends State<QuestionCard30> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Rate your",
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
                width: getProportionateScreenWidth(93),
                height: getProportionateScreenHeight(40),
                child: Center(
                  child: Text(
                    'Life',
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
                      "Quality",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: getProportionateScreenWidth(32),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(70),
                      height: getProportionateScreenHeight(10),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                            'assets/survey/underline/Underline.png'),
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
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionButton(
                text: widget.answerTextList[0][0],
                textColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[0][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[0][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[0][0];
                    print(widget.yourAnswer);
                    resultList[29] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[1][0],
                textColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[1][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[1][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[1][0];
                    print(widget.yourAnswer);
                    resultList[29] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[2][0],
                textColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[2][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[2][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[2][0];
                    print(widget.yourAnswer);
                    resultList[29] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[3][0],
                textColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[3][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[3][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[3][0];
                    print(widget.yourAnswer);
                    resultList[29] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[4][0],
                textColor: widget.yourAnswer == widget.answerTextList[4][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[4][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[4][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                getProportionateScreenWidth(widget.answerTextList[4][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[4][0];
                    print(widget.yourAnswer);
                    resultList[29] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[5][0],
                textColor: widget.yourAnswer == widget.answerTextList[5][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[5][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[5][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                getProportionateScreenWidth(widget.answerTextList[5][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[5][0];
                    print(widget.yourAnswer);
                    resultList[29] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[6][0],
                textColor: widget.yourAnswer == widget.answerTextList[6][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[6][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[6][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                getProportionateScreenWidth(widget.answerTextList[6][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[6][0];
                    print(widget.yourAnswer);
                    resultList[29] = widget.yourAnswer;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Center(
            child: Text(
              "How would you rate your overall quality of life during the past week?",
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

class QuestionCard31 extends StatefulWidget {
  final List<List> answerTextList = [
    ["Not At All", 75.0],
    ["A Little", 80.0],
    ["Quite a Bit", 80.0],
    ["Very Much", 75.0]
  ];
  //[[text,width],[],...]
  String yourAnswer = resultList[30];

  @override
  _QuestionCard31State createState() => _QuestionCard31State();
}

class _QuestionCard31State extends State<QuestionCard31> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Did",
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
                width: getProportionateScreenWidth(93),
                height: getProportionateScreenHeight(40),
                child: Center(
                  child: Text(
                    'You',
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
                      "Caugh",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: getProportionateScreenWidth(32),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(70),
                      height: getProportionateScreenHeight(10),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                            'assets/survey/underline/Underline.png'),
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
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionButton(
                text: widget.answerTextList[0][0],
                textColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[0][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[0][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[0][0];
                    print(widget.yourAnswer);
                    resultList[30] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[1][0],
                textColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[1][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[1][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[1][0];
                    print(widget.yourAnswer);
                    resultList[30] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[2][0],
                textColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[2][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[2][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[2][0];
                    print(widget.yourAnswer);
                    resultList[30] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[3][0],
                textColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[3][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[3][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[3][0];
                    print(widget.yourAnswer);
                    resultList[30] = widget.yourAnswer;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Center(
            child: Text(
              "How much did you cough?",
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

class QuestionCard32 extends StatefulWidget {
  final List<List> answerTextList = [
    ["Not At All", 75.0],
    ["A Little", 80.0],
    ["Quite a Bit", 80.0],
    ["Very Much", 75.0]
  ];
  //[[text,width],[],...]
  String yourAnswer = resultList[31];

  @override
  _QuestionCard32State createState() => _QuestionCard32State();
}

class _QuestionCard32State extends State<QuestionCard32> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Short of Breath",
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
                width: getProportionateScreenWidth(123),
                height: getProportionateScreenHeight(40),
                child: Center(
                  child: Text(
                    'During',
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
                      "Rest",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: getProportionateScreenWidth(32),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(70),
                      height: getProportionateScreenHeight(10),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                            'assets/survey/underline/Underline.png'),
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
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionButton(
                text: widget.answerTextList[0][0],
                textColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[0][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[0][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[0][0];
                    print(widget.yourAnswer);
                    resultList[31] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[1][0],
                textColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[1][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[1][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[1][0];
                    print(widget.yourAnswer);
                    resultList[31] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[2][0],
                textColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[2][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[2][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[2][0];
                    print(widget.yourAnswer);
                    resultList[31] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[3][0],
                textColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[3][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[3][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[3][0];
                    print(widget.yourAnswer);
                    resultList[31] = widget.yourAnswer;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Center(
            child: Text(
              "Were you short of breath when you rested?",
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

class QuestionCard33 extends StatefulWidget {
  final List<List> answerTextList = [
    ["Not At All", 75.0],
    ["A Little", 80.0],
    ["Quite a Bit", 80.0],
    ["Very Much", 75.0]
  ];
  //[[text,width],[],...]
  String yourAnswer = resultList[32];

  @override
  _QuestionCard33State createState() => _QuestionCard33State();
}

class _QuestionCard33State extends State<QuestionCard33> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Short of Breath",
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
                width: getProportionateScreenWidth(123),
                height: getProportionateScreenHeight(40),
                child: Center(
                  child: Text(
                    'During',
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
                      "Walking",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: getProportionateScreenWidth(32),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(70),
                      height: getProportionateScreenHeight(10),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                            'assets/survey/underline/Underline.png'),
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
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionButton(
                text: widget.answerTextList[0][0],
                textColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[0][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[0][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[0][0];
                    print(widget.yourAnswer);
                    resultList[32] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[1][0],
                textColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[1][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[1][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[1][0];
                    print(widget.yourAnswer);
                    resultList[32] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[2][0],
                textColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[2][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[2][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[2][0];
                    print(widget.yourAnswer);
                    resultList[32] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[3][0],
                textColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[3][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[3][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[3][0];
                    print(widget.yourAnswer);
                    resultList[32] = widget.yourAnswer;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Center(
            child: Text(
              "Were you short of breath when you walked?",
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

class QuestionCard34 extends StatefulWidget {
  final List<List> answerTextList = [
    ["Not At All", 75.0],
    ["A Little", 80.0],
    ["Quite a Bit", 80.0],
    ["Very Much", 75.0]
  ];
  //[[text,width],[],...]
  String yourAnswer = resultList[33];

  @override
  _QuestionCard34State createState() => _QuestionCard34State();
}

class _QuestionCard34State extends State<QuestionCard34> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Short of Breath during",
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
                width: getProportionateScreenWidth(93),
                height: getProportionateScreenHeight(40),
                child: Center(
                  child: Text(
                    'Climbing',
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
                      "Stairs",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: getProportionateScreenWidth(32),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(70),
                      height: getProportionateScreenHeight(10),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                            'assets/survey/underline/Underline.png'),
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
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionButton(
                text: widget.answerTextList[0][0],
                textColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[0][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[0][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[0][0];
                    print(widget.yourAnswer);
                    resultList[33] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[1][0],
                textColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[1][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[1][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[1][0];
                    print(widget.yourAnswer);
                    resultList[33] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[2][0],
                textColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[2][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[2][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[2][0];
                    print(widget.yourAnswer);
                    resultList[33] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[3][0],
                textColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[3][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[3][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[3][0];
                    print(widget.yourAnswer);
                    resultList[33] = widget.yourAnswer;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Center(
            child: Text(
              "Were you short of breath when you climbed stairs?",
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

class QuestionCard35 extends StatefulWidget {
  final List<List> answerTextList = [
    ["Not At All", 75.0],
    ["A Little", 80.0],
    ["Quite a Bit", 80.0],
    ["Very Much", 75.0]
  ];
  //[[text,width],[],...]
  String yourAnswer = resultList[34];

  @override
  _QuestionCard35State createState() => _QuestionCard35State();
}

class _QuestionCard35State extends State<QuestionCard35> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Have sore",
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
                width: getProportionateScreenWidth(113),
                height: getProportionateScreenHeight(40),
                child: Center(
                  child: Text(
                    'Mouth',
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
                width: getProportionateScreenWidth(4),
              ),
              Text(
                "or",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(32),
                  fontFamily: "Gilroy",
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(4),
              ),
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    Text(
                      "Tongue",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: getProportionateScreenWidth(32),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(70),
                      height: getProportionateScreenHeight(10),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                            'assets/survey/underline/Underline.png'),
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
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionButton(
                text: widget.answerTextList[0][0],
                textColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[0][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[0][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[0][0];
                    print(widget.yourAnswer);
                    resultList[34] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[1][0],
                textColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[1][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[1][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[1][0];
                    print(widget.yourAnswer);
                    resultList[34] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[2][0],
                textColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[2][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[2][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[2][0];
                    print(widget.yourAnswer);
                    resultList[34] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[3][0],
                textColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[3][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[3][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[3][0];
                    print(widget.yourAnswer);
                    resultList[34] = widget.yourAnswer;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Center(
            child: Text(
              "Have you had a sore mouth or tongue? ",
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

class QuestionCard36 extends StatefulWidget {
  final List<List> answerTextList = [
    ["Not At All", 75.0],
    ["A Little", 80.0],
    ["Quite a Bit", 80.0],
    ["Very Much", 75.0]
  ];
  //[[text,width],[],...]
  String yourAnswer = resultList[35];

  @override
  _QuestionCard36State createState() => _QuestionCard36State();
}

class _QuestionCard36State extends State<QuestionCard36> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Have",
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
                width: getProportionateScreenWidth(123),
                height: getProportionateScreenHeight(40),
                child: Center(
                  child: Text(
                    'Trouble',
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
                      "Swallowing",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: getProportionateScreenWidth(32),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(70),
                      height: getProportionateScreenHeight(10),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                            'assets/survey/underline/Underline.png'),
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
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionButton(
                text: widget.answerTextList[0][0],
                textColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[0][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[0][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[0][0];
                    print(widget.yourAnswer);
                    resultList[35] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[1][0],
                textColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[1][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[1][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[1][0];
                    print(widget.yourAnswer);
                    resultList[35] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[2][0],
                textColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[2][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[2][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[2][0];
                    print(widget.yourAnswer);
                    resultList[35] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[3][0],
                textColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[3][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[3][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[3][0];
                    print(widget.yourAnswer);
                    resultList[35] = widget.yourAnswer;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Center(
            child: Text(
              "Have you had trouble swallowing?",
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

class QuestionCard37 extends StatefulWidget {
  final List<List> answerTextList = [
    ["Not At All", 75.0],
    ["A Little", 80.0],
    ["Quite a Bit", 80.0],
    ["Very Much", 75.0]
  ];
  //[[text,width],[],...]
  String yourAnswer = resultList[36];

  @override
  _QuestionCard37State createState() => _QuestionCard37State();
}

class _QuestionCard37State extends State<QuestionCard37> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Have Tingling",
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
                width: getProportionateScreenWidth(93),
                height: getProportionateScreenHeight(40),
                child: Center(
                  child: Text(
                    'Hands',
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
                width: getProportionateScreenWidth(4),
              ),
              Text(
                "or",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(32),
                  fontFamily: "Gilroy",
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(4),
              ),
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    Text(
                      "Feet",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: getProportionateScreenWidth(32),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(70),
                      height: getProportionateScreenHeight(10),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                            'assets/survey/underline/Underline.png'),
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
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionButton(
                text: widget.answerTextList[0][0],
                textColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[0][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[0][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[0][0];
                    print(widget.yourAnswer);
                    resultList[36] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[1][0],
                textColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[1][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[1][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[1][0];
                    print(widget.yourAnswer);
                    resultList[36] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[2][0],
                textColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[2][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[2][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[2][0];
                    print(widget.yourAnswer);
                    resultList[36] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[3][0],
                textColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[3][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[3][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[3][0];
                    print(widget.yourAnswer);
                    resultList[36] = widget.yourAnswer;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Center(
            child: Text(
              "Have you had tingling hands or feet?",
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

class QuestionCard38 extends StatefulWidget {
  final List<List> answerTextList = [
    ["Not At All", 75.0],
    ["A Little", 80.0],
    ["Quite a Bit", 80.0],
    ["Very Much", 75.0]
  ];
  //[[text,width],[],...]
  String yourAnswer = resultList[37];

  @override
  _QuestionCard38State createState() => _QuestionCard38State();
}

class _QuestionCard38State extends State<QuestionCard38> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Have",
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
                width: getProportionateScreenWidth(93),
                height: getProportionateScreenHeight(40),
                child: Center(
                  child: Text(
                    'Hair',
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
                      "Loss",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: getProportionateScreenWidth(32),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(70),
                      height: getProportionateScreenHeight(10),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                            'assets/survey/underline/Underline.png'),
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
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionButton(
                text: widget.answerTextList[0][0],
                textColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[0][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[0][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[0][0];
                    print(widget.yourAnswer);
                    resultList[37] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[1][0],
                textColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[1][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[1][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[1][0];
                    print(widget.yourAnswer);
                    resultList[37] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[2][0],
                textColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[2][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[2][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[2][0];
                    print(widget.yourAnswer);
                    resultList[37] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[3][0],
                textColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[3][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[3][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[3][0];
                    print(widget.yourAnswer);
                    resultList[37] = widget.yourAnswer;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Center(
            child: Text(
              "Have you had hair loss?",
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

class QuestionCard39 extends StatefulWidget {
  final List<List> answerTextList = [
    ["Not At All", 75.0],
    ["A Little", 80.0],
    ["Quite a Bit", 80.0],
    ["Very Much", 75.0]
  ];
  //[[text,width],[],...]
  String yourAnswer = resultList[38];

  @override
  _QuestionCard39State createState() => _QuestionCard39State();
}

class _QuestionCard39State extends State<QuestionCard39> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Feel Pain in",
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
                    'Chest',
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
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionButton(
                text: widget.answerTextList[0][0],
                textColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[0][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[0][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[0][0];
                    print(widget.yourAnswer);
                    resultList[38] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[1][0],
                textColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[1][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[1][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[1][0];
                    print(widget.yourAnswer);
                    resultList[38] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[2][0],
                textColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[2][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[2][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[2][0];
                    print(widget.yourAnswer);
                    resultList[38] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[3][0],
                textColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[3][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[3][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[3][0];
                    print(widget.yourAnswer);
                    resultList[38] = widget.yourAnswer;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Center(
            child: Text(
              "Have you had pain in your chest?",
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

class QuestionCard40 extends StatefulWidget {
  final List<List> answerTextList = [
    ["Not At All", 75.0],
    ["A Little", 80.0],
    ["Quite a Bit", 80.0],
    ["Very Much", 75.0]
  ];
  //[[text,width],[],...]
  String yourAnswer = resultList[39];

  @override
  _QuestionCard40State createState() => _QuestionCard40State();
}

class _QuestionCard40State extends State<QuestionCard40> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Have Pain in",
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
                width: getProportionateScreenWidth(93),
                height: getProportionateScreenHeight(40),
                child: Center(
                  child: Text(
                    'Arm',
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
                width: getProportionateScreenWidth(4),
              ),
              Text(
                "or",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(32),
                  fontFamily: "Gilroy",
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(4),
              ),
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    Text(
                      "Shoulder",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: getProportionateScreenWidth(32),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(70),
                      height: getProportionateScreenHeight(10),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                            'assets/survey/underline/Underline.png'),
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
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionButton(
                text: widget.answerTextList[0][0],
                textColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[0][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[0][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[0][0];
                    print(widget.yourAnswer);
                    resultList[39] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[1][0],
                textColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[1][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[1][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[1][0];
                    print(widget.yourAnswer);
                    resultList[39] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[2][0],
                textColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[2][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[2][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[2][0];
                    print(widget.yourAnswer);
                    resultList[39] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[3][0],
                textColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[3][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[3][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[3][0];
                    print(widget.yourAnswer);
                    resultList[39] = widget.yourAnswer;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Center(
            child: Text(
              "Have you had pain in your arm or shoulder?",
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

class QuestionCard41 extends StatefulWidget {
  String yourAnswer = resultList[40];
  final List<List> answerTextList = [
    ["Not At All", 75.0],
    ["A Little", 80.0],
    ["Quite a Bit", 80.0],
    ["Very Much", 75.0]
  ];
  @override
  _QuestionCard41State createState() => _QuestionCard41State();
}

class _QuestionCard41State extends State<QuestionCard41> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Have Pain in",
            style: TextStyle(
              color: Colors.black,
              fontSize: getProportionateScreenWidth(24),
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
                width: getProportionateScreenWidth(93),
                height: getProportionateScreenHeight(40),
                child: Center(
                  child: Text(
                    'Body',
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
                      "Parts",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: getProportionateScreenWidth(24),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(70),
                      height: getProportionateScreenHeight(10),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                            'assets/survey/underline/Underline.png'),
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
                  fontSize: getProportionateScreenWidth(24),
                  //fontFamily: "",
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 39),
            //-------------------------------------------TODO:Error--------------------------------------------------------------------------
            child: TextField(
              onChanged: (value) {
                widget.yourAnswer = value;
                resultList[40] = widget.yourAnswer;
              },
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'GoogleSans',
              ),
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Your Answer'),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          Center(
            child: Text(
              "Have you had pain in other parts of your body? If Yes, where",
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

class QuestionCard42 extends StatefulWidget {
  final List<List> answerTextList = [
    ["Not At All", 75.0],
    ["A Little", 80.0],
    ["Quite a Bit", 80.0],
    ["Very Much", 75.0]
  ];
  //[[text,width],[],...]
  String yourAnswer = resultList[41];

  @override
  _QuestionCard42State createState() => _QuestionCard42State();
}

class _QuestionCard42State extends State<QuestionCard42> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Had",
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
                width: getProportionateScreenWidth(93),
                height: getProportionateScreenHeight(40),
                child: Center(
                  child: Text(
                    'Any',
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
                      "Medication",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: getProportionateScreenWidth(32),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(70),
                      height: getProportionateScreenHeight(10),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                            'assets/survey/underline/Underline.png'),
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
            height: getProportionateScreenHeight(10),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 39),
            //-------------------------------------------TODO:Error--------------------------------------------------------------------------
            child: TextField(
              onChanged: (value) {
                widget.yourAnswer = value;
                resultList[41] = widget.yourAnswer;
              },
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'GoogleSans',
              ),
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Your Answer'),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          Center(
            child: Text(
              "Did you take any medicine for pain? If yes, how much did it help?",
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

class QuestionCard43 extends StatefulWidget {
  String yourAnswer = resultList[42];
  final List<List> answerTextList = [
    ["Not At All", 75.0],
    ["A Little", 80.0],
    ["Quite a Bit", 80.0],
    ["Very Much", 75.0]
  ];

  @override
  _QuestionCard43State createState() => _QuestionCard43State();
}

class _QuestionCard43State extends State<QuestionCard43> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(50),
          left: getProportionateScreenHeight(27),
          right: getProportionateScreenHeight(25)),
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Had",
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
                width: getProportionateScreenWidth(93),
                height: getProportionateScreenHeight(40),
                child: Center(
                  child: Text(
                    'Blood',
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
                      "Cough",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: getProportionateScreenWidth(32),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(70),
                      height: getProportionateScreenHeight(10),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                            'assets/survey/underline/Underline.png'),
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
            height: getProportionateScreenHeight(20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionButton(
                text: widget.answerTextList[0][0],
                textColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[0][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[0][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[0][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[0][0];
                    print(widget.yourAnswer);
                    resultList[42] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[1][0],
                textColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[1][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[1][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[1][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[1][0];
                    print(widget.yourAnswer);
                    resultList[42] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[2][0],
                textColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[2][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[2][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[2][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[2][0];
                    print(widget.yourAnswer);
                    resultList[42] = widget.yourAnswer;
                  });
                },
              ),
              OptionButton(
                text: widget.answerTextList[3][0],
                textColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Colors.white
                    : Colors.black,
                buttonColor: widget.yourAnswer == widget.answerTextList[3][0]
                    ? Color(0xff2BAAE4)
                    : Color(0xffE8E8E8),
                fontWeight: widget.yourAnswer == widget.answerTextList[3][0]
                    ? FontWeight.w900
                    : FontWeight.bold,
                boxWidth:
                    getProportionateScreenWidth(widget.answerTextList[3][1]),
                onTap: () {
                  setState(() {
                    widget.yourAnswer = widget.answerTextList[3][0];
                    print(widget.yourAnswer);
                    resultList[42] = widget.yourAnswer;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Center(
            child: Text(
              "Did you cough up blood? ",
              style: TextStyle(
                color: Colors.black.withOpacity(0.46),
                fontSize: getProportionateScreenWidth(16),
                //fontFamily: "",
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
