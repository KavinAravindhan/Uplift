import 'package:cancer_app/screens/home/home.dart';
import 'package:flutter/material.dart';

import 'package:cancer_app/screens/survey/survey.dart';
import 'package:cancer_app/sizeConfig.dart';
import 'package:flutter/material.dart';

class Successful extends StatelessWidget {
  const Successful({Key? key}) : super(key: key);

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
              image: AssetImage("assets/survey/Form/Form.png"),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(756),
                ),
                GestureDetector(
                  onTap: () {
                    // Phone call
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Container(
                    color: Colors.transparent,
                    width: getProportionateScreenWidth(190),
                    height: getProportionateScreenHeight(75),
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
