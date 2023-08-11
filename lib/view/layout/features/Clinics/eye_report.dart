import 'package:flutter/material.dart';

class EyeReportScreen extends StatefulWidget {
  const EyeReportScreen({Key? key}) : super(key: key);

  @override
  State<EyeReportScreen> createState() => _EyeReportScreenState();
}

class _EyeReportScreenState extends State<EyeReportScreen> {
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
              "Repots",
              style: TextStyle(
                  fontSize: 30, color: Colors.red, fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(
            height: 45,
          ),
        ]));
  }
}
