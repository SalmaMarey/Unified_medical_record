import 'package:flutter/material.dart';
import 'package:graduation_project/view/widgets/DropdownButtonExample2.dart';

import '../../widgets/DropdownButtonExample3.dart';
import '../../widgets/drop_down_button_example.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  var dropdownValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue.shade50,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            const Padding(
              padding: EdgeInsets.only(top: 15, left: 10),
              child: Text(
                "My History",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 12, right: 12),
                  child: Container(
                    width: 190,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Expanded(
                      child: DropdownButtonExample2(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 12, right: 12),
                  child: Container(
                    width: 190,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Expanded(
                      child: DropdownButtonExample3(),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(top: 25, left: 5, right: 5),
                child: Container(
                  height: 90,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ListTile(
                      title: const Text(
                        "Appiontment",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w400),
                      ),
                      leading: const Icon(Icons.visibility,
                          color: Colors.red, size: 30),
                      subtitle: const Text(
                        "Eye Clinic",
                        style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                      trailing: Container(
                        width: 130,
                        child: Column(children: const [
                          Text(
                            '100LE',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w900),
                          ),
                          Text(
                            'Debited on 03 May 2023',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w400),
                          ),
                        ]),
                      ),
                    ),
                  ),
                )),
            Padding(
                padding: const EdgeInsets.only(top: 25, left: 5, right: 5),
                child: Container(
                  height: 90,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ListTile(
                      title: const Text(
                        "Re-Appiontment",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w400),
                      ),
                      leading: const Icon(Icons.visibility,
                          color: Colors.red, size: 30),
                      subtitle: const Text(
                        "Eye Clinic",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                      trailing: Container(
                        width: 130,
                        child: Column(children: const [
                          Text(
                            '50LE',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w900),
                          ),
                          Text(
                            'Debited on 08 May 2023',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w400),
                          ),
                        ]),
                      ),
                    ),
                  ),
                )),
            Padding(
                padding: const EdgeInsets.only(top: 25, left: 5, right: 5),
                child: Container(
                  height: 90,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ListTile(
                      title:const  Text(
                        "Medication Order",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 23,
                            fontWeight: FontWeight.w400),
                      ),
                      leading: const Icon(Icons.visibility,
                          color: Colors.red, size: 30),
                      subtitle: const Text(
                        "Pharmacy",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                      trailing: Container(
                        width: 130,
                        child: Column(children: const [
                          Text(
                            '180LE',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w900),
                          ),
                          Text(
                            'Debited on 03 May 2023',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w400),
                          ),
                        ]),
                      ),
                    ),
                  ),
                ))
          ]),
        ),
      ),
    );
  }
}
