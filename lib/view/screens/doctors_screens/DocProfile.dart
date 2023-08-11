import 'package:flutter/material.dart';


class DocProfile extends StatefulWidget {
  const DocProfile({Key? key}) : super(key: key);

  @override
  MapScreenState createState() => MapScreenState();
}

class MapScreenState extends State<DocProfile>
    with SingleTickerProviderStateMixin {
  bool _status = true;
  final FocusNode myFocusNode = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Container(
      // color: Colors.white,
      child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
               Container(
                height: 250.0,
                // color: Colors.white,
                child:  Column(
                  children:  [
                   const  Padding(
                        padding:  EdgeInsets.only(left: 20.0, top: 20.0),
                        child:  Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            Padding(
                              padding: EdgeInsets.only(left: 25.0),
                              child:  Text('PROFILE',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25.0,
                                  )),
                            )
                          ],
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child:  Stack(fit: StackFit.loose, children: <Widget>[
                         Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                             Container(
                                width: 140.0,
                                height: 140.0,
                                decoration:  const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image:  DecorationImage(
                                    image:
                                         ExactAssetImage('assets/images/s13.png'),
                                    fit: BoxFit.cover,
                                  ),
                                )),
                          ],
                        ),
                      const  Padding(
                            padding:  EdgeInsets.only(top: 90.0, right: 100.0),
                            child:  Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                 CircleAvatar(
                                  backgroundColor: Colors.red,
                                  radius: 25.0,
                                  child:  Icon(
                                    Icons.camera_alt,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            )),
                      ]),
                    )
                  ],
                ),
              ),
               Container(
                // color: Color(0xffFFFFFF),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 25.0),
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 25.0),
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children:  [
                                  Text(
                                    'Personal Information',
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                               Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  _status ? _getEditIcon() :  Container(),
                                ],
                              )
                            ],
                          )),
                     const  Padding(
                          padding:  EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 25.0),
                          child:  Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                               Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                   Text(
                                    'Name',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          )),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 2.0),
                          child:  Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                               Flexible(
                                child:  TextField(
                                  decoration: const InputDecoration(
                                    hintText: "Ahmed",
                                  ),
                                  enabled: !_status,
                                  autofocus: !_status,
                                ),
                              ),
                            ],
                          )),
                      const   Padding(
                          padding:  EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 25.0),
                          child:  Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                               Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children:  [
                                   Text(
                                    'Email ID',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          )),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 2.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                               Flexible(
                                child:  TextField(
                                  decoration: const InputDecoration(
                                      hintText: "Ahmed2008@gmail.com "),
                                  enabled: !_status,
                                ),
                              ),
                            ],
                          )),
                      const Padding(
                          padding:  EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 25.0),
                          child:  Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                               Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                   Text(
                                    'Mobile',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          )),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 2.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                               Flexible(
                                child:  TextField(
                                  decoration: const InputDecoration(
                                      hintText: "01099011104"),
                                  enabled: !_status,
                                ),
                              ),
                            ],
                          )),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 25.0),
                          child:  Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                flex: 2,
                                child: Container(
                                  child:  const Text(
                                    'ID Code',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  child: const Text(
                                    'City',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          )),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 2.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Flexible(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: TextField(
                                    decoration: const InputDecoration(
                                        hintText: "143244"),
                                    enabled: !_status,
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                child: TextField(
                                  decoration: const InputDecoration(
                                      hintText: "Mansoura"),
                                  enabled: !_status,
                                ),
                              ),
                            ],
                          )),
                      !_status ? _getActionButtons() :  Container(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    myFocusNode.dispose();
    super.dispose();
  }

  Widget _getActionButtons() {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 45.0),
      child:  Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Container(
                // ignore: deprecated_member_use
                  child:ElevatedButton( style: ElevatedButton.styleFrom(
                    primary: Colors.red,),
                    onPressed: () {
                      setState(() {
                        _status = true;
                        FocusScope.of(context).requestFocus(FocusNode());
                      });
                    },
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(20.0)),
                    child: const Text("Save"),
                  )),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Container(
                // ignore: deprecated_member_use
                  child: ElevatedButton(  style: ElevatedButton.styleFrom(
                    primary: Colors.red,),
                    onPressed: () {
                      setState(() {
                        _status = true;
                        FocusScope.of(context).requestFocus(FocusNode());
                      });
                    },
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(20.0)),
                    child: const Text("Cancel"),
                  )),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getEditIcon() {
    return GestureDetector(
      child:  const CircleAvatar(
        backgroundColor: Colors.red,
        radius: 14.0,
        child:  Icon(
          Icons.edit,
          color: Colors.white,
          size: 16.0,
        ),
      ),
      onTap: () {
        setState(() {
          _status = false;
        });
      },
    );
  }
}
