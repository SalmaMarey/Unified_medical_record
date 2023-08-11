import 'package:flutter/material.dart';

import 'medicalReport.dart';

class MedicalRecordScreen extends StatefulWidget {
  const MedicalRecordScreen({Key? key}) : super(key: key);

  @override
  State<MedicalRecordScreen> createState() => _MedicalRecordScreenState();
}

class _MedicalRecordScreenState extends State<MedicalRecordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Patient Medical Record ",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: const Icon(
            Icons.medical_information_rounded,
            color: Colors.red,
          ),
        ),
        body: ListView(children: [
          const SizedBox(
            height: 20,
          ),
          const Padding(
              padding:  EdgeInsets.only(left: 10.0, right: 25.0, top: 8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children:  [
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Enter patient ID:',
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              )),
           Padding(
              padding:  const EdgeInsets.only(left: 15.0, right: 25.0, top: 0.0),
              child: Row(mainAxisSize: MainAxisSize.max, children: <Widget>[
                 const Flexible(
                  child: TextField(
                    decoration: InputDecoration(hintText: "Enter ID "),
                  ),
                ),
                const  SizedBox(
                  width: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 25.0,
                      child: IconButton(
                        icon:  const Icon(Icons.arrow_forward),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>const  MedicalReport()));
                        },
                      ),
                    )
                  ],
                ),
              ]
              )
          ), const SizedBox(height:90,),
          Container(
            width: 250,
            height: 300,
            child: Image.asset("assets/images/s29.png"),
          ),
        ]
        )
    );
  }
}
