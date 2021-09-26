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
