import 'package:flutter/material.dart';
import 'package:graduation_project/view/layout/choice_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: "Your medical record is always at hand",

              body:
              "We store certificates, test results, vaccination records, sick leave certificates, doctor prescriptions and any other important information",
              image: Image.asset("assets/images/qq.png", height: 400.0, width: 450.0),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: "Conveniently store and easily find your documents",
              body: "Take photos of your medical records and save them.",
              image: Image.asset("assets/images/s7.png", height: 300.0, width: 300.0),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: "We care about your security",
              body:
              "We safely protect your data and never transfer them to any third parties",
              image: Image.asset("assets/images/s11.png", height: 290.0, width: 300.0),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: "Sign up or sign in ",
              body: "Monitor your health with us",
              image: Image.asset(
                "assets/images/s12.png",
                height: 650.0,
                width: 500.0,
              ),
              decoration: getPageDecoration(),
            ),
          ],
          next: const Icon(Icons.arrow_forward, color: Colors.redAccent),
          done: const Text(
            'Done',
            style:
            TextStyle(fontWeight: FontWeight.bold, color: Colors.redAccent),
          ),
          onDone: () => goToHome(context),
          showSkipButton: true,
          skip: const Text(
            'Skip',
            style: TextStyle(color: Colors.redAccent),
          ),
          // onSkip: () => print('skip'),
          // showBackButton: true,
          // back: const Icon(Icons.arrow_back),
          dotsDecorator: getDotDecoration(),
          nextFlex: 0,
          skipOrBackFlex: 0,
          animationDuration: 350,
          isProgressTap: true,
          isProgress: true,
          // freeze: false,
          onChange: (index) => print(index),
        ),
      ),
    );
  }

  PageDecoration getPageDecoration() {
    return const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
      bodyTextStyle: TextStyle(fontSize: 20),
      imagePadding: EdgeInsets.all(22),
      titlePadding: EdgeInsets.zero,
      bodyPadding: EdgeInsets.all(20),
      // pageColor: Colors.white);
    );
  }

  DotsDecorator getDotDecoration() {
    return DotsDecorator(
        color: const Color(0xFFBDBDBD),
        size: const Size(10, 10),
        activeSize: const Size(22, 10),
        activeColor: Colors.redAccent,
        activeShape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)));
  }

  void goToHome(context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const ChoiceScreen()),
    );
  }
}
