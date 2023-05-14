import 'package:flutter/material.dart';
import 'package:graduation_project/view/layout/features/ClinicPage.dart';
import 'package:graduation_project/view/layout/features/Laboratorypage.dart';
import 'package:graduation_project/view/layout/features/ReceptionPage.dart';
import 'package:graduation_project/view/screens/patient_screens/SettingsPage.dart';
import 'features/PharmacyPage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> page = [
    ReceptionPage(),
    ClinicPage(),
    LaboratoryPage(),
    PharmacyPage(),
    SettingsScreen(),
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
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.health_and_safety_outlined),
          label: 'Reception',
          backgroundColor: Colors.red.shade600,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.local_hospital),
          label: 'Clinic',
          backgroundColor: Colors.red.shade600,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.science),
          label: 'Lab',
          backgroundColor: Colors.red.shade600,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.local_pharmacy),
          label: 'Pharmacy',
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
