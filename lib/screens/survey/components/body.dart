import 'dart:ui';

import 'package:cancer_app/sizeConfig.dart';
import 'package:flutter/material.dart';

import 'questionCard.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          child: Image(
            image: AssetImage("assets/survey/background/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: getProportionateScreenHeight(65),
              ),
              GIFCard(),
              SizedBox(
                height: getProportionateScreenHeight(34),
              ),
              ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                  child: Container(
                    width: double.infinity,
                    height: getProportionateScreenHeight(844) - getProportionateScreenHeight(435),
                    child: Column(
                      children: [
                        SizedBox(
                          height: getProportionateScreenHeight(10),
                        ),
                        Center(
                            child: Image.asset('assets/survey/swipe_rectangle/Swipe_Recantagle.png'),
                        ),
                        QuestionCard(
                          answerTextList: [["Easy",67.0],["Normal",80.0],["Simple",67.0],["Hard",67.0]] ,
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(50)),
                        color: Colors.white.withOpacity(0.7)),
                  ),
                ),
              ),
            ],
          ),
        ),

        // Insert here
        Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(332.6),
            top: getProportionateScreenHeight(45),
          ),
          child: Tooltip(
            message: "Pause the Test",
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: getProportionateScreenWidth(41),
                    height: getProportionateScreenWidth(41),
                    child: Icon(Icons.pause_rounded),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white10.withOpacity(0.6)),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class GIFCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
        child: Container(
          padding: EdgeInsets.all(30),
          width: getProportionateScreenWidth(327),
          height: getProportionateScreenHeight(336),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage("assets/survey/GIFs/Lung/1.gif"),
            ),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.black.withOpacity(0.7)),
        ),
      ),
    );
  }
}
