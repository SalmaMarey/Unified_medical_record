import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:graduation_project/view/layout/features/Laboratory%20pages/results_screen.dart';

import 'Laboratory pages/tracking_results.dart';

class LaboratoryPage extends StatefulWidget {
  LaboratoryPage({Key? key}) : super(key: key);

  @override
  State<LaboratoryPage> createState() => _LaboratoryPageState();
}

class _LaboratoryPageState extends State<LaboratoryPage> {
  int _currentIndex = 0;

  late CarouselSlider carouselSlider;

  List<String> imgs = [
    'assets/images/s16.png',
    'assets/images/s15.png',
    'assets/images/s14.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      const SizedBox(
        height: 20,
      ),
      const Center(
        child: Text(
          "Laboratory Services",
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
              autoPlayAnimationDuration: const Duration(milliseconds: 700),
              viewportFraction: 0.8,
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
          padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: const[
                   Text(
                    'See your results:',
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
              children: [
                CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 25.0,
                  child: IconButton(
                    color: Colors.white,
                    icon: const  Icon(Icons.arrow_forward),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ResultsScreen()));
                    },
                  ),
                ),
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
            children:  [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    'Track your results:',
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
              children:  [
                CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 25.0,
                  child: IconButton(
                    icon:  const Icon(Icons.arrow_forward),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TrackingResultsScreen()));
                    },
                  ),
                )
              ],
            )
          ])),
    ]));
  }
}
