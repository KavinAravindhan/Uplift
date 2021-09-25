import 'package:cancer_app/sizeConfig.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
// this must be a top-level function

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
            padding: EdgeInsets.only(
              top: getProportionateScreenHeight(493),
              left: getProportionateScreenWidth(7),
            ),
            child: Text(
              "Welcome",
              style: TextStyle(
                  color: Colors.black.withOpacity(0.12),
                  fontFamily: "Google Sans",
                  fontSize: getProportionateScreenWidth(85),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: getProportionateScreenHeight(570)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: getProportionateScreenHeight(18)),
                      child: Text(
                        "to",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.18),
                            fontFamily: "Google Sans",
                            fontSize: getProportionateScreenWidth(28),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      "UpLift",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Google Sans",
                          fontSize: getProportionateScreenWidth(108),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(30),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: getProportionateScreenWidth(35)),
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: getProportionateScreenWidth(306.88),
                            height: getProportionateScreenHeight(71),
                            child: Image(
                              image: AssetImage(
                                  "assets/welcome/MuteTextBG/MuteTextBG.png"),
                              fit: BoxFit.contain,
                            ),
                          ),
                          GestureDetector(
                            child: Icon(Icons.volume_up_rounded),
                            onTap: () {},
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getProportionateScreenWidth(50),
                          top: getProportionateScreenHeight(15),
                        ),
                        child: Text(
                          "You can mute the sound\nif you don't want it",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xFF583F00),
                              fontFamily: "Google Sans",
                              fontSize: getProportionateScreenWidth(15),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
