import 'package:flutter/material.dart';


class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


        appBar: AppBar(
          title: const Text(
            "Today's appointments",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: const Icon(
            Icons.access_time,
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
                      subtitle: const Text('1-1-2023   12:00 Pm'),
                      leading: const Icon(Icons.calendar_month_rounded),
                      trailing: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.check_box)),
                    ),
                    const   Padding(
                      padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                      child:  Align(
                        child: Text(
                          'Patient Name: Ahmed',
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
                      title: const Text('Sunday'),
                      subtitle: const Text('1-1-2023   12:00 Pm'),
                      leading: const Icon(Icons.calendar_month_rounded),
                      trailing: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.check_box)),
                    ),
                    const  Padding(
                      padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                      child: Align(
                        child: Text(
                          'Patient Name: Ahmed',
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
              Container(
                child: Column(
                  children: [
                    ListTile(
                      title: const Text('Sunday'),
                      subtitle: const Text('1-1-2023   12:00 Pm'),
                      leading: const Icon(Icons.calendar_month_rounded),
                      trailing: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.check_box)),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                      child: Align(
                        child:  Text(
                          'Patient Name: Ahmed',
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

            ]),
          ),
        ));
  }
}