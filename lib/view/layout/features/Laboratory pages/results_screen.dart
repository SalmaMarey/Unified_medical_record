import 'package:flutter/material.dart';

class ResultsScreen extends StatefulWidget {
  const ResultsScreen({Key? key}) : super(key: key);

  @override
  State<ResultsScreen> createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        // backgroundColor: Colors.blue.shade50,
        body: SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.max,
          children: [
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 8, top: 20),
          child: Text(
            "Available results",
            style: TextStyle(
                fontSize: 30,
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
        ),
        const Divider(
          thickness: 4,
        ),
        const SizedBox(
          height: 5,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 8),
          child: Text(
            " CBC",
            style: TextStyle(
                fontSize: 30,
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
             Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Container(
            width: 350,
            height:530,
            color: Colors.grey[300],
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children:  [
              Row(children:  [
                Padding(
                  padding: EdgeInsets.only(left: 5, top: 5),
                  child: Text(
                    "RBC: 4.8 x10^6/ul",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  width: 70,
                ),
                Text(
                  "Normal ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ]),
              const Divider(
                thickness: 2,
              ),
              Row(children: const [
                Padding(
                  padding: EdgeInsets.only(left: 5, top: 5),
                  child: Text(
                    "HgB: 13 g/dl",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  width: 130,
                ),
                Text(
                  "Normal ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ]),
              const Divider(
                thickness: 2,
              ),
              Row(children: const [
                Padding(
                  padding: EdgeInsets.only(left: 5, top: 5),
                  child: Text(
                    "Hct: 45 %",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  width: 165,
                ),
                Text(
                  "Normal ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ]),
              const Divider(
                thickness: 2,
              ),
              Row(children: const [
                Padding(
                  padding: EdgeInsets.only(left: 5, top: 5),
                  child: Text(
                    "MCV: 80 fl",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  width: 152,
                ),
                Text(
                  "Normal ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ]),
              const Divider(
                thickness: 2,
              ),
              Row(children: const [
                Padding(
                  padding: EdgeInsets.only(left: 5, top: 5),
                  child: Text(
                    "MCH: 32 pg",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  width: 135,
                ),
                Text(
                  "Normal ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ]),
              const Divider(
                thickness: 2,
              ),
              Row(children: const [
                Padding(
                  padding: EdgeInsets.only(left: 5, top: 5),
                  child: Text(
                    "WBC: 13 x10^3/ul",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  width: 70,
                ),
                Text(
                  "Abnormal ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ]),
                  const SizedBox(
                    height: 15,
                  ),
              const Text(
                " Neutrophils: 70%",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),const SizedBox(
                    height: 3,
                  ),
              const Text(
                " Lymphocytes:24%",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),const SizedBox(
                    height: 3,
                  ),
              const Text(
                " Monocytes: 5%",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),const SizedBox(
                    height: 3,
                  ),
              const Text(
                " Eosinophils: 2%",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),const SizedBox(
                    height: 3,
                  ),
              const Text(
                " Basophils: 0%",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const Divider(
                thickness: 2,
              ),
              Row(children: const [
                Padding(
                  padding: EdgeInsets.only(left: 5, top: 5),
                  child: Text(
                    "PLT: 355 x10^3/ul",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  width: 70,
                ),
                Text(
                  "Normal ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ]),
            ]),
          ),
        )
      ]),
    ));
  }
}
