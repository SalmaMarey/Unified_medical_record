import 'package:flutter/material.dart';

class DentalReportScreen extends StatefulWidget {
  const DentalReportScreen({Key? key}) : super(key: key);

  @override
  State<DentalReportScreen> createState() => _DentalReportScreenState();
}

class _DentalReportScreenState extends State<DentalReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: ListView(children: [
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
              "Reports",
              style: TextStyle(
                  fontSize: 30, color: Colors.red, fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          Column(
            children: [


          Container(
            width: 350,
            padding: const EdgeInsets.all(10),
            height: 150,

            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: const Column(

              children: [ Align(
              alignment: Alignment.centerLeft,
              child:
                Text(
                  "First Admission",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold), textAlign: TextAlign.left,),
                ), SizedBox(
                  height: 10,
                ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                  "-has severe sensitivity and gingivitis",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                      fontWeight: FontWeight.w600),
                textAlign: TextAlign.left,),
            ), SizedBox(
                  height: 10,
                ),
                Align(
                alignment: Alignment.centerLeft,
    child: Text(
                  "-Severe caries in the first and second molars on the upper left side",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                      fontWeight: FontWeight.w600),
      textAlign: TextAlign.left,),
                ),
              ],
            ),
          ), SizedBox(height: 15,),
              Container(
                width: 350,
                padding: const EdgeInsets.all(10),
                height: 150,

                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: const Column(

                  children: [ Align(
                    alignment: Alignment.centerLeft,
                    child:
                    Text(
                      "Second Admission",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold), textAlign: TextAlign.left,),
                  ), SizedBox(
                    height: 10,
                  ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "-Gum sensitivity has subsided, but is still present",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.left,),
                    ), SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "-Molar caries was eliminated",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.left,),
                    ),
                  ],
                ),
              )])
        ]));
  }
}
