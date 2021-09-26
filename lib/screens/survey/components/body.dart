import 'dart:ui';

import 'package:cancer_app/screens/survey/components/TextSpeech.dart';
import 'package:cancer_app/screens/survey/survey.dart';
import 'package:cancer_app/sizeConfig.dart';
import 'package:flutter/material.dart';

import 'questionCard.dart';

class Body extends StatefulWidget {
  final StatefulWidget container;
  final String gifText;
  final String speech ;
  Body({required this.container,required this.gifText,required this.speech}) ;

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  void speaking() async{
    await TextSpeech(textSpeak: widget.speech, isActiveBool: isTTS).speak(widget.speech);
  }

  @override
  void initState() {
    speaking() ;
    super.initState();
  }


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
              GIFCard(
                gifText: widget.gifText,
              ),
              SizedBox(
                height: getProportionateScreenHeight(34),
              ),
              ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                  child: Container(
                    width: double.infinity,
                    height: getProportionateScreenHeight(844) -
                        getProportionateScreenHeight(435),
                    child: Column(
                      children: [
                        SizedBox(
                          height: getProportionateScreenHeight(10),
                        ),
                        Center(
                          child: Image.asset(
                              'assets/survey/swipe_rectangle/Swipe_Recantagle.png'),
                        ),
                        widget.container,
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
        Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(332.6),
            top: getProportionateScreenHeight(45),
          ),
          child: Tooltip(
            message: "Pause/Paly the Test",
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if(isTTS == true){
                        isTTS = false ;
                      }
                      else{
                        isTTS = true ;
                      }
                    });
                  },
                  child: isTTS==true ? Container(
                    width: getProportionateScreenWidth(41),
                    height: getProportionateScreenWidth(41),
                    child: Icon(Icons.pause_rounded),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white10.withOpacity(0.6)),
                  ) : Container(
                    width: getProportionateScreenWidth(41),
                    height: getProportionateScreenWidth(41),
                    child: Icon(Icons.play_arrow),
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
  final String gifText;
  GIFCard({required this.gifText});

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
              image: AssetImage(gifText),            ),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.black.withOpacity(0.7)),
        ),
      ),
    );
  }
}
