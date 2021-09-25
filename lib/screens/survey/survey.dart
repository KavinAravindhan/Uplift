import 'package:cancer_app/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'components/body.dart';


class Survey extends StatefulWidget {

  @override
  _SurveyState createState() => _SurveyState();
}

class _SurveyState extends State<Survey> {

  PageController controller = PageController() ;
  int currentPage = 0 ;
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
                Body(),
                Body(),
                Body(),
                Body(),

              ],
              controller: controller,
              onPageChanged: (num){
                setState(() {
                  currentPage=num;
                  print(currentPage) ;
                });
              },
            ) ,

            Container(
              margin: EdgeInsets.only(left: 20,right: 20,bottom: 20,top: 730),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5,sigmaY: 5),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            controller.jumpToPage(currentPage-1);
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
                          (currentPage+1).toString(),
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
                  ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5,sigmaY: 5),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            controller.jumpToPage(currentPage+1);
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
