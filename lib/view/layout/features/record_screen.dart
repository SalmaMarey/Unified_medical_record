import 'package:flutter/material.dart';

class RecordScreen extends StatefulWidget {
  const RecordScreen({Key? key}) : super(key: key);

  @override
  State<RecordScreen> createState() => _RecordScreenState();
}

class _RecordScreenState extends State<RecordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Record Of Appointment ",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: const Icon(
            Icons.request_page_outlined,
            color: Colors.red,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
          child: Container(
            child: Column(children: [
              Container(
                child: Column(
                  children: [
                    ListTile(
                      title: const Text('Sunday'),
                      subtitle: const Text('1-3-2023   12:00 Pm'),
                      leading: const Icon(Icons.calendar_month_rounded,color: Colors.red,),
                      trailing: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.check_box,color: Colors.red,)),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                      child: Align(
                        child: Text(
                          'Dr. Ahmed',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        alignment: Alignment.bottomLeft,
                      ),
                    ),
                  ],
                ),
              ),
              const  Divider(thickness: 2,),
              Container(
                child: Column(
                  children: [
                    ListTile(
                      title: const Text('Saturday'),
                      subtitle: const Text('7-3-2023   7:00 Pm'),
                      leading: const Icon(Icons.calendar_month_rounded),
                      trailing: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.check_box)),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                      child: Align(
                        child: Text(
                          'Dr. Hesham',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        alignment: Alignment.bottomLeft,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(thickness: 2,),


            ]),
          ),
        ));
  }
}
