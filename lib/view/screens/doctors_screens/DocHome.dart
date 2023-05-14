import 'package:flutter/material.dart';

import 'package:graduation_project/view/screens/doctors_screens/Dashboard.dart';
import 'package:graduation_project/view/screens/doctors_screens/Docsettings.dart';



import '../../layout/features/PharmacyPage.dart';
import '../patient_screens/MedicalRecordPage.dart';

class DocHomePage extends StatefulWidget {
  const DocHomePage({Key? key}) : super(key: key);

  @override
  State<DocHomePage> createState() => _DocHomePageState();
}

class _DocHomePageState extends State<DocHomePage> {
  int currentIndex = 0;
  List<Widget> page = [
    DashboardPage(),
    MedicalRecordScreen(),
    DocSettings(),
  ];

  onIndexChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[currentIndex],
      bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.red.shade600,
          type: BottomNavigationBarType.shifting,
          items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.dashboard),
          label: 'Dashboard',
          backgroundColor: Colors.red.shade600,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.medical_information_outlined),
          label: 'Medical Record',
          backgroundColor: Colors.red.shade600,
        ),


        BottomNavigationBarItem(
          icon: const Icon(Icons.settings),
          label: 'Settings',
          backgroundColor: Colors.red.shade600,
        ),
      ], currentIndex: currentIndex, onTap: onIndexChanged),
    );
  }
}
