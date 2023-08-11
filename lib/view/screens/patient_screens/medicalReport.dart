import 'package:flutter/material.dart';
import 'package:graduation_project/view/layout/features/Clinics/dental_report.dart';
import 'package:graduation_project/view/layout/features/Clinics/eye_report.dart';

import '../../authentication/LogDocPage.dart';
import '../../layout/features/Laboratory pages/results_screen.dart';
import '../../layout/features/pharmacy/prescription.dart';

class MedicalReport extends StatefulWidget {
  const MedicalReport({Key? key}) : super(key: key);

  @override
  State<MedicalReport> createState() => _MedicalReportState();
}

class _MedicalReportState extends State<MedicalReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        const SizedBox(
          height: 20,
        ),
        const Center(
          child: Text(
            "Our Services",
            style: TextStyle(
                fontSize: 30, color: Colors.red, fontWeight: FontWeight.w700),
          ),
        ),
        Column(
          children: [
            Row(children: [
              Padding(
                  padding:
                      const EdgeInsets.only(left: 15, right: 60, top: 55.0),
                  child: Column( mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                    InkWell(
                      child: Ink.image(
                        image: const AssetImage("assets/images/s22.png"),
                        // fit: BoxFit.cover,
                        width: 120.0,
                        height: 200.0,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => EyeReportScreen()),
                        );
                      },
                    ),const  Padding(padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "Eye Reports",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    )),
                  ])),
              Padding(
                  padding:
                  const EdgeInsets.only(left: 0, right: 0.0, top: 55.0),
                  child: Column(children: [
                    InkWell(
                      child: Ink.image(
                        image: const AssetImage("assets/images/s23.png"),
                        // fit: BoxFit.cover,
                        width:100.0,
                        height: 200.0,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DentalReportScreen()),
                        );
                      },
                    ),
                    const Text(
                      "Dental reports",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    )
                  ]))
            ]),
            Row(children: [
              Padding(
                  padding:
                  const EdgeInsets.only(left: 0, right: 37, top: 55.0),
                  child: Column( mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                          child: Ink.image(
                            image: const AssetImage("assets/images/s19.png"),
                            // fit: BoxFit.cover,
                            width: 180.0,
                            height: 200.0,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => PrescriptionScreen()),
                            );
                          },
                        ),const  Padding(padding: EdgeInsets.only(left: 0),
                            child: Text(
                              "Pharmacy",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            )),
                      ])),
              Padding(
                  padding:
                  const EdgeInsets.only(left: 0, right: 0.0, top: 55.0),
                  child: Column(children: [
                    InkWell(
                      child: Ink.image(
                        image: const AssetImage("assets/images/s32.png"),
                        // fit: BoxFit.cover,
                        width:120.0,
                        height: 200.0,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ResultsScreen()),
                        );
                      },
                    ),
                    const Text(
                      "Laboratory",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    )
                  ]))
            ])
          ],
        )
      ],
    ));
  }
}
