import 'package:flutter/material.dart';

class QuestionCard extends StatefulWidget {
  const QuestionCard({Key? key}) : super(key: key);

  @override
  _QuestionCardState createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50, left: 27, right: 25),
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
              fontSize: 32,
              fontFamily: "Gilroy",
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Container(
                width: 103,
                height: 40,
                child: Center(
                  child: Text(
                    'Heavy',
                    style: TextStyle(
                      fontFamily: 'GoogleSans',
                      fontSize: 32,
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
                width: 10,
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      "Weight",
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: 32,
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    //TODO
                    //Image.asset(),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "?",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  //fontFamily: "",
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionButton(
                text: "Easy",
                textColor: Colors.black,
                buttonColor: Color(0xffE8E8E8),
                fontWeight: FontWeight.bold,
                boxWidth: 67,
              ),
              OptionButton(
                text: "Normal",
                textColor: Colors.white,
                buttonColor: Color(0xff2BAAE4),
                fontWeight: FontWeight.w900,
                boxWidth: 80,
              ),
              OptionButton(
                text: "Easy",
                textColor: Colors.black,
                buttonColor: Color(0xffE8E8E8),
                fontWeight: FontWeight.bold,
                boxWidth: 67,
              ),
              OptionButton(
                text: "Easy",
                textColor: Colors.black,
                buttonColor: Color(0xffE8E8E8),
                fontWeight: FontWeight.bold,
                boxWidth: 67,
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              "Are you able to carry suitcases?",
              style: TextStyle(
                color: Colors.black.withOpacity(0.46),
                fontSize: 16,
                //fontFamily: "",
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //TODO image
                Container(
                  child: Row(
                    children: [
                      Text(
                        "2",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          //fontFamily: "",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        " / 43",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.43),
                          fontSize: 13,
                          //fontFamily: "",
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                //TODO image
              ],
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

  OptionButton({
    required this.text,
    required this.buttonColor,
    required this.textColor,
    required this.fontWeight,
    required this.boxWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: boxWidth,
      height: 40,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'GoogleSans',
            fontSize: 15,
            color: textColor,
            fontWeight: fontWeight,
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
