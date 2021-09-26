import 'package:cancer_app/screens/survey/survey.dart';
import 'package:cancer_app/sizeConfig.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
              image: AssetImage("assets/welcome/Login1/Login1.png"),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(486),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Survey()));
                  },
                  child: Container(
                    color: Colors.transparent,
                    width: getProportionateScreenWidth(360),
                    height: getProportionateScreenHeight(229),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(60),
                ),
                GestureDetector(
                  onTap: () {
                    // Phone call
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Survey()));
                  },
                  child: Container(
                    color: Colors.transparent,
                    width: getProportionateScreenWidth(190),
                    height: getProportionateScreenHeight(65),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
