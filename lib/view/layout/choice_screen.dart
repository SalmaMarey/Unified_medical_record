import 'package:flutter/material.dart';
import 'package:graduation_project/view/authentication/LogDocPage.dart';
import 'package:graduation_project/view/authentication/Loginpage.dart';


class ChoiceScreen extends StatefulWidget {
  const ChoiceScreen({Key? key}) : super(key: key);

  @override
  State<ChoiceScreen> createState() => _ChoiceScreenState();
}

class _ChoiceScreenState extends State<ChoiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // backgroundColor: Colors.white,
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text("Welcome to our Health Care App",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center),
            Container(
              width: 350,
              height: 300,
              child: Image.asset("assets/images/s5.png"),
            ),
            Row(children: [
              const Padding(
                padding: EdgeInsets.only(right: 55),
              ),
              SizedBox(
                height: 50, //height of button
                width: 130, //width of button
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red, // background
                    onPrimary: Colors.white, // foreground
                    elevation: 3, //elevation of button
                    shape: RoundedRectangleBorder(
                      //to set border radius to button
                        borderRadius: BorderRadius.circular(25)),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LogDocPage()),
                    );
                  },
                  child: const Text(
                    "Doctor",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const  SizedBox(
                width: 40,
              ),
              SizedBox(
                height: 50, //height of button
                width: 130, //width of button
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red, // background
                    onPrimary: Colors.white, // foreground
                    elevation: 3, //elevation of button
                    shape: RoundedRectangleBorder(
                      //to set border radius to button
                        borderRadius: BorderRadius.circular(25)),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child:const Text(
                    "Patient",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ]),
          ]),
        ));
  }
}
