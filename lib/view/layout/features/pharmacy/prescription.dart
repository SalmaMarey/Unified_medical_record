import 'package:flutter/material.dart';

class PrescriptionScreen extends StatefulWidget {
  const PrescriptionScreen({Key? key}) : super(key: key);

  @override
  State<PrescriptionScreen> createState() => _PrescriptionScreenState();
}

class _PrescriptionScreenState extends State<PrescriptionScreen> {
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
              "Required medications",
              style: TextStyle(
                  fontSize: 30, color: Colors.red, fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Container(
                      width: 350,
                      height: 70,
                      decoration: const BoxDecoration(color: Colors.white),
                      child: const ListTile(
                          title: Text(
                            "Ortho Tri Cyclen 100mg",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                          subtitle: Text(
                            "twice daily, for ten days",
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
                      width: 350,
                      height: 70,
                      decoration: const BoxDecoration(color: Colors.white),
                      child: const ListTile(
                          title: Text(
                            "Proventil 300mg",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                          subtitle: Text(
                            "three times daily, for ten days",
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
                          width: 350,
                          height: 70,
                          decoration: const BoxDecoration(color: Colors.white),
                          child: const ListTile(
                              title: Text(
                                "Amoxicilin 10mg",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w400),
                              ),
                              subtitle: Text(
                                "three times daily, for ten days",
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
                        )),

              ]))
        ]));
  }
}
