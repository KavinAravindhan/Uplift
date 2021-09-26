import 'package:cancer_app/sizeConfig.dart';
import 'package:flutter/material.dart';

const primaryColor = Colors.black;
const secondaryColor = Color(0xFFE9891C);
const easyColor = Color(0xFFE8E8E8);
int signUp = 0;

final kTextFieldDecoration = InputDecoration(
  hintText: 'Enter the hintText',
  hintStyle: TextStyle(
    color: Colors.white.withOpacity(0.5),
    fontSize: 12,
    fontWeight: FontWeight.bold,
    fontFamily: 'GoogleSans',
  ),
  fillColor: Color(0xff151515),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: BorderSide(
      width: 1.0,
      color: Color(0xff333333),
    ),
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: BorderSide(
      width: 2.0,
      color: Color(0xffFCAE13),
    ),
  ),
);

List ttsList = ["Do you have any trouble doing strenuous activities, like carrying a heavy shopping bag or a suitcase",
"Do you have any trouble taking a long walk",
"Do you have any trouble taking a short walk outside of the house",
"Do you need to stay in bed or a chair during the day",
"Do you need help with eating, dressing, washing yourself or using the toilet",
"Were you limited in doing either your work or other daily activities",
"Were you limited in pursuing your hobbies or other leisure time activities",
"Were you short of breath",
"Have you had pain",
"Did you need to rest",
"Have you had trouble sleeping",
"Have you felt weak",
"Have you lacked appetite",
"Have you felt nauseated",
"Have you vomited",
"Have you been constipated",
"Have you had diarrhea",
"Were you tired",
"Did pain interfere with your daily activities",
"Have you had difficulty in concentrating on things, like reading a newspaper or watching television",
"Did you feel tense",
"Did you worry",
"Did you feel irritable",
"Did you feel depressed",
"Have you had difficulty remembering things",
"Has your physical condition or medical treatment interfered with your family life",
"Has your physical condition or medical treatment interfered with your social activities",
"Has your physical condition or medical treatment caused you financial difficulties",
"How would you rate your overall health during the past week",
"How would you rate your overall quality of life during the past week",
"How much did you cough",
"Were you short of breath when you rested",
"Were you short of breath when you walked",
"Were you short of breath when you climbed stairs",
"Have you had a sore mouth or tongue",
"Have you had trouble swallowing",
"Have you had tingling hands or feet",
"Have you had hair loss",
"Have you had pain in your chest",
"Have you had pain in your arm or shoulder",
"Have you had pain in other parts of your body If yes, where",
"Did you take any medicine for pain If yes, how much did it help",
"Did you cough up blood"] ;

var giflist = ['assets/survey/GIFs/Lung/1.gif/1.gif','assets/survey/GIFs/Lung/2.gif/2.gif','assets/survey/GIFs/Lung/3.gif/3.gif','assets/survey/GIFs/Lung/4.gif/4.gif','assets/survey/GIFs/Lung/5.gif/5.gif','assets/survey/GIFs/Lung/6.gif/6.gif','assets/survey/GIFs/Lung/7.gif/7.gif','assets/survey/GIFs/Lung/8.gif/8.gif','assets/survey/GIFs/Lung/9.gif/9.gif','assets/survey/GIFs/Lung/10.gif/10.gif','assets/survey/GIFs/Lung/11.gif/11.gif','assets/survey/GIFs/Lung/12.gif/12.gif','assets/survey/GIFs/Lung/13.gif/13.gif','assets/survey/GIFs/Lung/14.gif/14.gif','assets/survey/GIFs/Lung/15.gif/15.gif','assets/survey/GIFs/Lung/16.gif/16.gif','assets/survey/GIFs/Lung/17.gif/17.gif','assets/survey/GIFs/Lung/18.gif/18.gif','assets/survey/GIFs/Lung/19.gif/19.gif','assets/survey/GIFs/Lung/20.gif/20.gif','assets/survey/GIFs/Lung/21.gif/21.gif','assets/survey/GIFs/Lung/22.gif/22.gif','assets/survey/GIFs/Lung/23.gif/23.gif','assets/survey/GIFs/Lung/24.gif/24.gif','assets/survey/GIFs/Lung/25.gif/25.gif','assets/survey/GIFs/Lung/26.gif/26.gif','assets/survey/GIFs/Lung/27.gif/27.gif','assets/survey/GIFs/Lung/28.gif/28.gif','assets/survey/GIFs/Lung/29.gif/29.gif','assets/survey/GIFs/Lung/30.gif/30.gif','assets/survey/GIFs/Lung/31.gif/31.gif','assets/survey/GIFs/Lung/32.gif/32.gif','assets/survey/GIFs/Lung/33.gif/33.gif','assets/survey/GIFs/Lung/34.gif/34.gif','assets/survey/GIFs/Lung/35.gif/35.gif','assets/survey/GIFs/Lung/36.gif/36.gif','assets/survey/GIFs/Lung/37.gif/37.gif','assets/survey/GIFs/Lung/38.gif/38.gif','assets/survey/GIFs/Lung/39.gif/39.gif','assets/survey/GIFs/Lung/40.gif/40.gif','assets/survey/GIFs/Lung/41.gif/41.gif','assets/survey/GIFs/Lung/42.gif/42.gif','assets/survey/GIFs/Lung/43.gif/43.gif'];