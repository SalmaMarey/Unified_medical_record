import 'package:flutter/material.dart';
import 'package:graduation_project/view/authentication/Loginpage.dart';
import 'package:graduation_project/view/screens/patient_screens/ProfilePage.dart';
import 'package:graduation_project/view/screens/patient_screens/about_us.dart';
import 'package:graduation_project/view/screens/patient_screens/payment_page.dart';


class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  @override
  Widget build(BuildContext context) {
    var display1;

    return Scaffold(
      body: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:  [
                    Center(
                        child: Text(
                      'Settings',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                      ),
                    )),
                    Icon(
                      Icons.settings,
                      size: 30,
                      color: Colors.red,
                    ),
                  ],
                ),
                const Divider(
                  thickness: 0.2,
                  color: Colors.red,
                ),
                Column(
                  children: [
                    ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (contex) =>const  ProfileScreen()));
                      },
                      title: Text(
                        "Profile",
                        style: TextStyle(
                            color: Colors.orange.shade800, fontSize: 20),
                      ),
                      subtitle: const Text(
                        'User Profile',
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      leading: const Icon(
                        Icons.person_pin,
                        size: 40,
                        color: Colors.red,
                      ),
                    ),
                    const Divider(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AboutUsScreen()));

                        print("Save");
                      },
                      child: ListTile(
                        title: Text(
                          "About Us",
                          style: TextStyle(
                              color: Colors.orange.shade800, fontSize: 20),
                        ),
                        subtitle: const Text(
                          'About Us Data',
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                        leading: const Icon(
                          Icons.person_outlined,
                          size: 40,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    const Divider(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PaymentScreen()));

                        print("Save");
                      },
                      child: ListTile(
                        title: Text(
                          "Payment",
                          style: TextStyle(
                              color: Colors.orange.shade800, fontSize: 20),
                        ),
                        subtitle: const Text(
                          'Payment Methods',
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                        leading: const Icon(
                          Icons.payment,
                          size: 40,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    const Divider(),
                    ListTile(
                      title: Text(
                        "Mode",
                        style: TextStyle(
                            color: Colors.orange.shade800, fontSize: 20),
                      ),
                      subtitle: const Text(
                        'Option Mode Dark or Light',
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      leading: const Icon(
                        Icons.ac_unit_sharp,
                        size: 40,
                        color: Colors.red,
                      ),
                      trailing: IconButton(
                        icon: const Icon(
                          Icons.dark_mode_outlined,
                          size: 40,
                          color: Colors.red,
                        ),
                        onPressed: () {
                          // Navigate to the PreferencePage
                        },
                      ),
                    ),
                    const Divider(),
                    ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      title: Text(
                        "LogOut",
                        style: TextStyle(
                            color: Colors.orange.shade800, fontSize: 20),
                      ),
                      subtitle: const Text(
                        'LogOut Settings Screen',
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      leading: const Icon(
                        Icons.logout,
                        size: 30,
                        color: Colors.red,
                      ),
                    ),
                    const Divider(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
