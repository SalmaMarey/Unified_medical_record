import 'package:flutter/material.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            // backgroundColor: Colors.blue.shade50,
            body: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
          const Padding(
            padding: EdgeInsets.only(left: 5),
            child: Text("About Us",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 40)),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Image.asset(
              "assets/images/s28.png",
              height: 250,
              width: 350,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 28,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, right: 5, left: 5),
            child: Container(
              width: double.infinity,
              height: 180,
              child: const Text(
                "Our project aims to unify Medical Record so that it collects all patient data in one safe place with a high protection system and makes it easy for him to know his sick history through the application. Our biggest goal is to care for patients in the best possible way.",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 28,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, right: 5, left: 5),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Project Engineers:",
                    style: TextStyle(
                        fontSize: 30,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w400,
                        color: Colors.red),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5, right: 5, left: 5),
                    child: Text(
                      "1- Ahmed Hassan Bahlol (Front-End Developer)",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5, right: 5, left: 5),
                    child: Text(
                      "2- Rawan Ali Abuzeid (Front-End Developer)",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5, right: 5, left: 5),
                    child: Text(
                      "3- Salma Ahmed Marey (Mobile Developer)",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5, right: 5, left: 5),
                    child: Text(
                      "4- Yassmin Mohamed Bahi (Mobile Developer)",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5, right: 5, left: 5),
                    child: Text(
                      "5- Amany Ali Elenna (Back-End Developer)",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5, right: 5, left: 5),
                    child: Text(
                      "6- Hassan El-Saed Zidan (Back-End Developer)",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5, right: 5, left: 5),
                    child: Text(
                      "7- Hossam Mohamed Mohamed (Back-End Developer)",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5, right: 5, left: 5),
                    child: Text(
                      "8- Ahmed Yasser Fayed (Blockchain Developer)",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5, right: 5, left: 5),
                    child: Text(
                      "9- Nadeen Medhat Abd-Elaziz (Blockchain Developer)",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ),
                ]),
          ),
        ]))));
  }
}
