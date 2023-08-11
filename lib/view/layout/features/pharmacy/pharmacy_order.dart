import 'package:flutter/material.dart';
import 'package:graduation_project/view/layout/features/pharmacy/pharmacy_pay.dart';

class PharmacyOrderScreen extends StatefulWidget {
  const PharmacyOrderScreen({Key? key}) : super(key: key);

  @override
  State<PharmacyOrderScreen> createState() => _PharmacyOrderScreenState();
}

class _PharmacyOrderScreenState extends State<PharmacyOrderScreen> {

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
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: Container(
                    width: 400,
                    height: 70,
                    decoration: const BoxDecoration(color: Colors.white),
                    child: const ListTile(
                        title: Text(
                          "Ortho Tri Cyclen 100mg",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                        subtitle: Text(
                          "Fifty Egyptian pounds",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                        ),
                        trailing: Icon(
                          Icons.vaccines,
                          color: Colors.red,
                          size: 30,
                        )),
                  )),
              const   SizedBox(height: 15,),
              ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: Container(
                    width: 400,
                    height: 70,
                    decoration: const BoxDecoration(color: Colors.white),
                    child: const ListTile(
                        title: Text(
                          "Proventil 300mg",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                        subtitle: Text(
                          "Thirty Egyptian pounds",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                        ),
                        trailing: Icon(
                          Icons.medication,
                          color: Colors.red,
                          size: 30,
                        )),
                  )),
              const   SizedBox(height: 15,),
              ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: Container(
                    width: 400,
                    height: 70,
                    decoration: const BoxDecoration(color: Colors.white),
                    child: const ListTile(
                        title: Text(
                          "Amoxicilin 10mg",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                        subtitle: Text(
                          "One hundred Egyptian pounds",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                        ),
                        trailing: Icon(
                          Icons.medication_liquid,
                          color: Colors.red,
                          size: 30,
                        )),
                  )),]),
          const SizedBox(
            height: 340,
          ), Padding(padding: EdgeInsets.only(bottom: 10),
          child:
          Container(
            width: 350,
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
                          fontSize: 20,
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
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ]),
              Row(children: [
                Padding(
                    padding: const EdgeInsets.only(left: 251),
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
                              fontSize: 25,
                              color: Colors.white),
                        ),
                      ),

                    ))),
              ]),
            ]),
          ))
        ]), //Column
      ), //SizedBox
    ); //MaterialApp
  }
}
