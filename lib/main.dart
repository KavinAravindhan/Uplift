import 'package:cancer_app/screens/survey/survey.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cancer App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: Survey(),
    );
  }
}
