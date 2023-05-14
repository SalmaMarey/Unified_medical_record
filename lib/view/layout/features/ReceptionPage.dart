import 'package:flutter/material.dart';

import 'package:graduation_project/view/layout/features/apppoint_screen.dart';
import 'package:graduation_project/view/layout/features/record_screen.dart';

import '../../screens/patient_screens/MedicalRecordPage.dart';

class ReceptionPage extends StatefulWidget {
  const ReceptionPage({Key? key}) : super(key: key);

  @override
  State<ReceptionPage> createState() => _ReceptionPageState();
}

class _ReceptionPageState extends State<ReceptionPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton:
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          FloatingActionButton.extended(
            clipBehavior: Clip.antiAlias,
            backgroundColor: Colors.red[500],
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MedicalRecordScreen()));
            },
            label: const Text("Medical Record"),
            icon: const Icon(Icons.medical_information),
          ),
        ]),
        body: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const SizedBox(
              height: 120,
            ),
            Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Reception Services",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 200,
                          height: 80,
                          child: const Icon(
                            Icons.calendar_month_rounded,
                            size: 80,
                            color: Colors.red,
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 80,
                          child: const Icon(
                            Icons.receipt_long_outlined,
                            size: 80,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 180,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.red[200],
                          ),
                          child: InkWell(
                            child: const Center(
                                child: Text(
                              "Go To Appointment",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            )),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const AppointScreen()));
                              print("Save");
                            },
                          ),
                        ),
                        Container(
                          width: 180,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.red[200],
                          ),
                          child: InkWell(
                            child: const Center(
                                child: Text(
                              "Go To Record",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            )),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const RecordScreen()));

                              print("Save");
                            },
                          ),
                        ),
                      ],
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
