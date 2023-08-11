import 'package:flutter/material.dart';

class TrackingOrderScreen extends StatefulWidget {
  const TrackingOrderScreen({Key? key}) : super(key: key);

  @override
  State<TrackingOrderScreen> createState() => _TrackingOrderScreenState();
}

class _TrackingOrderScreenState extends State<TrackingOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Tracking Orders",
            style: TextStyle(color: Colors.red),
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
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(children: [
            Container(
              child: Column(
                children: [
                  (Image.asset(
                    "assets/images/s19.png",
                    height: 300.0,
                    width: 500.0,
                     fit: BoxFit.cover,
                  )),
                  ListTile(
                    title: const Text('Sunday'),
                    subtitle: const Text('1-1-2023   12:00 Pm'),
                    leading: const Icon(Icons.calendar_month_rounded),
                    trailing: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.check_box)),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: Align(
                      child: Text(
                        'You will receive the order at this time.',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      alignment: Alignment.bottomLeft,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 2,
            ),
          ]),
        ));
  }
}
