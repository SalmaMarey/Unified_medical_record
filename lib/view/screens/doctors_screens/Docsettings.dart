import 'package:flutter/material.dart';
import 'package:graduation_project/view/authentication/LogDocPage.dart';
import 'package:graduation_project/view/screens/doctors_screens/DocProfile.dart';
import 'package:graduation_project/view/widgets/settingtile.dart';

import 'package:ionicons/ionicons.dart';

import '../patient_screens/about_us.dart';



class DocSettings extends StatefulWidget {
  const DocSettings({Key? key}) : super(key: key);

  @override
  State<DocSettings> createState() => _DocSettingsState();
}

class _DocSettingsState extends State<DocSettings> {
  bool switchTransaction = false;
  @override
  Widget build(BuildContext context) {
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
                                builder: (contex) => DocProfile()));
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
                    InkWell( onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                              const AboutUsScreen()));

                      print("Save");
                    },
                      child:  ListTile(
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
                      ),),
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
                          onPressed: () {},
                        )),
                    const Divider(),
                    ListTile(
                      onTap: () {
                        Navigator.push( context,
                            MaterialPageRoute(
                                builder: (context) =>
                                 LogDocPage   ()));
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
