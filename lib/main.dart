import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:graduation_project/view/layout/on_boarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {


  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.white));

    return MaterialApp(


      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: "Life Line",
      home: OnBoardingScreen(),
      );

  }
}