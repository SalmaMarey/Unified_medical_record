import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/view/layout/features/pharmacy/pharmacy_order.dart';
import 'package:graduation_project/view/layout/features/pharmacy/pharmacy_track.dart';

import 'Laboratory pages/tracking_results.dart';

class PharmacyPage extends StatefulWidget {
  PharmacyPage({Key? key}) : super(key: key);

  @override
  State<PharmacyPage> createState() => _PharmacyPageState();
}

class _PharmacyPageState extends State<PharmacyPage> {
  int _currentIndex = 0;

  late CarouselSlider carouselSlider;

  List<String> imgs = [
    'assets/images/s6.png',
    'assets/images/s24.png',
    'assets/images/s18.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //     automaticallyImplyLeading: false,
        //     centerTitle: true,
        //     title: Text(
        //       "Pharmacy Services",
        //       style: TextStyle(fontSize: 30),
        //     ), backgroundColor: Colors.red,
        // ),
        // // backgroundColor: Colors.blue.shade50,
        body: ListView(children: [
      const SizedBox(
        height: 20,
      ),
      const Center(
        child: Text(
          "Pharmacy Services",
          style: TextStyle(
              fontSize: 30, color: Colors.red, fontWeight: FontWeight.w700),
        ),
      ),
      Builder(
        builder: (context) {
          final double height = MediaQuery.of(context).size.height;
          return CarouselSlider(
            options: CarouselOptions(
              height: 270,

              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 700),
              viewportFraction: 0.9,
              // autoPlay: false,
            ),
            items: imgs
                .map((item) => Container(
                      child: Center(
                          child: Image.asset(
                        item,
                        fit: BoxFit.cover,
                        // height: height,
                      )),
                    ))
                .toList(),
          );
        },
      ),
      Padding(
          padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    'make an order:',
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          )),
      Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 2.0),
          child: Row(mainAxisSize: MainAxisSize.max, children: [
            const Flexible(
              child: TextField(
                decoration: InputDecoration(hintText: "Enter ID "),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 25.0,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_forward),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const PharmacyOrderScreen()));
                    },
                  ),
                )
              ],
            )
          ])),
      const SizedBox(
        height: 10,
      ),
      Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    'Track your order:',
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          )),
      Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 2.0),
          child: Row(mainAxisSize: MainAxisSize.max, children: <Widget>[
            const Flexible(
              child: TextField(
                decoration: InputDecoration(hintText: "Enter ID "),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 25.0,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_forward),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const TrackingOrderScreen()));
                    },
                  ),
                )
              ],
            )
          ])),
    ]));
  }
}
