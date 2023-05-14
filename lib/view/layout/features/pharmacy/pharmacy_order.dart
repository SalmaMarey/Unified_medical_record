import 'package:flutter/material.dart';
import 'package:graduation_project/view/layout/features/pharmacy/pharmacy_pay.dart';

class PharmacyOrderScreen extends StatefulWidget {
  const PharmacyOrderScreen({Key? key}) : super(key: key);

  @override
  State<PharmacyOrderScreen> createState() => _PharmacyOrderScreenState();
}

class _PharmacyOrderScreenState extends State<PharmacyOrderScreen> {
  bool value = false;
  bool value2 = false;
  bool value3 = false;
  bool value4 = false;
  bool value5 = false;
  bool value6 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(
            height: 50,
          ),
          const Center(
            child: Text(
              "The required medication",
              style: TextStyle(
                  fontSize: 30, color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ),
          const Divider(
            thickness: 4,
          ),
          const SizedBox(
            height: 15,
          ),
          ListTile(
            leading: const Icon(
              Icons.medication_outlined,
              size: 35,
              color: Colors.red,
            ),
            title: const Text(
              "Panadol",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 25,
              ),
            ),
            subtitle: const Text(
              "30LE",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
            trailing: Checkbox(
                activeColor: Colors.red,
                checkColor: Colors.white,
                value: value,
                onChanged: (val) {
                  setState(() {
                    value = val!;
                    print(value);
                  });
                }),
          ),
          ListTile(
            leading: const Icon(
              Icons.medication_outlined,
              size: 35,
              color: Colors.red,
            ),
            title: const Text(
              "Panadol",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 25,
              ),
            ),
            subtitle: const Text(
              "30LE",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
            trailing: Checkbox(
                activeColor: Colors.red,
                checkColor: Colors.white,
                value: value2,
                onChanged: (val) {
                  setState(() {
                    value2 = val!;
                    print(value2);
                  });
                }),
          ),
          ListTile(
            leading: const Icon(
              Icons.medication_outlined,
              size: 35,
              color: Colors.red,
            ),
            title: const Text(
              "Panadol",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 25,
              ),
            ),
            subtitle: const Text(
              "30LE",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
            trailing: Checkbox(
                activeColor: Colors.red,
                checkColor: Colors.white,
                value: value3,
                onChanged: (val) {
                  setState(() {
                    value3 = val!;
                    print(value3);
                  });
                }),
          ),
          ListTile(
            leading: const Icon(
              Icons.medication_outlined,
              size: 35,
              color: Colors.red,
            ),
            title: const Text(
              "Panadol",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 25,
              ),
            ),
            subtitle: const Text(
              "30LE",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
            trailing: Checkbox(
                activeColor: Colors.red,
                checkColor: Colors.white,
                value: value4,
                onChanged: (val) {
                  setState(() {
                    value4 = val!;
                    print(value4);
                  });
                }),
          ),
          ListTile(
            leading: const Icon(
              Icons.medication_outlined,
              size: 35,
              color: Colors.red,
            ),
            title: const Text(
              "Panadol",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 25,
              ),
            ),
            subtitle: const Text(
              "30LE",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
            trailing: Checkbox(
                activeColor: Colors.red,
                checkColor: Colors.white,
                value: value5,
                onChanged: (val) {
                  setState(() {
                    value5 = val!;
                    print(value5);
                  });
                }),
          ),
          ListTile(
            leading: const Icon(
              Icons.medication_outlined,
              size: 35,
              color: Colors.red,
            ),
            title: const Text(
              "Panadol",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 25,
              ),
            ),
            subtitle: const Text(
              "30LE",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
            trailing: Checkbox(
                activeColor: Colors.red,
                checkColor: Colors.white,
                value: value6,
                onChanged: (val) {
                  setState(() {
                    value6 = val!;
                    print(value6);
                  });
                }),
          ),
          const SizedBox(
            height: 80,
          ),
          Container(
            width: 400,
            height: 85,
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.red),
              borderRadius: BorderRadius.circular(13),
            ),
            child: Stack(children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 5, left: 15),
                      child: Text(
                        "Total:",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        " 180LE",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ]),
              Row(children: [
                Padding(
                    padding: const EdgeInsets.only(left: 301),
                    child: InkWell( onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                              const PharmacyPayScreen()));
                      print("Save");
                    },
                        child: Container(
                      width: 95,
                      height: 85,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          "Pay",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white),
                        ),
                      ),

                    ))),
              ]),
            ]),
          )
        ]), //Column
      ), //SizedBox
    ); //MaterialApp
  }
}
