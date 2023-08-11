import 'package:flutter/material.dart';

import 'package:graduation_project/view/layout/features/Clinics/eye_screen.dart';

import 'Clinics/dental_screen.dart';

class ClinicPage extends StatefulWidget {
  const ClinicPage({Key? key}) : super(key: key);

  @override
  State<ClinicPage> createState() => _ClinicPageState();
}

class _ClinicPageState extends State<ClinicPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(

            body: Column(children: [
              const SizedBox(
                height: 100,
              ),
              Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    const Text(
                      "Clinic Services",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 90,
                    ),
                    Row(children: [
                      const SizedBox(
                        width: 30,
                      ),
                      Image.asset(
                        'assets/images/s22.png', width: 150,height: 150,
                      ),
                      const SizedBox(
                        width: 35,
                      ),
                      Column(
                        children: [
                          InkWell(
                            child: const Center(
                              child: Text(
                                "Eye Clinic",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const EyeScreen()));

                              print("Save");
                            },
                          ),
                        ],
                      ),
                    ]),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(children: [
                      const SizedBox(
                        width: 30,
                      ),
                      Image.asset(
                        'assets/images/s23.png',
                        height: 150,
                        width: 120,
                      ),
                      const SizedBox(
                        width: 35,
                      ),
                      Column(
                        children: [
                          InkWell(
                            child: const Center(
                              child: Text(
                                "Dental Clinic",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const DentalScreen()));

                              print("Save");
                            },
                          ),
                        ],
                      ),
                    ])
                  ]))
            ])));
  }
}
