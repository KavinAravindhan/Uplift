import 'package:cancer_app/screens/login/login.dart';
import 'package:cancer_app/screens/survey/survey.dart';
import 'package:cancer_app/screens/welcome/welcome.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cancer App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: Welcome(),
    );
  }
}
