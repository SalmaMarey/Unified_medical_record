import 'package:flutter/material.dart';

class TrackingResultsScreen extends StatefulWidget {
  const TrackingResultsScreen({Key? key}) : super(key: key);

  @override
  State<TrackingResultsScreen> createState() => _TrackingResultsScreenState();
}

class _TrackingResultsScreenState extends State<TrackingResultsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Tracking Results",
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
                    "assets/images/s9.png",
                    height: 250.0,
                    width: 350.0,
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
                        'Lipase result will be shown at this time',
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
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: Align(
                      child: Text(
                        'Urea result will be shown at this time',
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
