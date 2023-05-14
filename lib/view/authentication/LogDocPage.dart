import 'package:flutter/material.dart';
import 'package:graduation_project/view/layout/choice_screen.dart';
import 'package:graduation_project/view/widgets/button_widget.dart';

import '../screens/doctors_screens/DocHome.dart';

class LogDocPage extends StatefulWidget {
  LogDocPage({Key? key}) : super(key: key);

  @override
  State<LogDocPage> createState() => _LogDocPageState();
}

class _LogDocPageState extends State<LogDocPage> {
  bool isPasswordHidden = true;
  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> docState = GlobalKey<FormState>();

    return Scaffold(
        // backgroundColor: Colors.white,
        body: Form(
      key: docState,
      child: InkWell(
          child: ListView(children: [
        Padding(
            padding: const EdgeInsets.only(top: 1.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChoiceScreen()),
                    );
                  },
                  icon: const Icon(Icons.arrow_back_rounded),
                  iconSize: 45,
                  color: Colors.red,
                ),
                const SizedBox(
                  width: 30,
                ),
                (Image.asset(
                  "assets/images/s4.png",
                  height: 250.0,
                  width: 285.0,
                  // fit: BoxFit.fill,
                )),
              ],
            )),
        const Text(
          "  Sign In",
          style: TextStyle(
            fontSize: 30,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(6.0),
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: 17,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 12, right: 12),
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              color: const Color.fromARGB(132, 184, 181, 181),
              borderRadius: BorderRadius.circular(12),
            ),
            child: TextFormField(
              validator: (text) =>
                  text!.isEmpty ? 'Email is Not Valid! ☹' : null,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintStyle: TextStyle(fontSize: 17),
                labelText: 'Email',
                labelStyle: TextStyle(
                  color: Colors.redAccent,
                ),
                suffixIcon: Icon(Icons.email, color: Colors.redAccent),
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(10),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 12, right: 12),
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              color: const Color.fromARGB(132, 184, 181, 181),
              borderRadius: BorderRadius.circular(12),
            ),
            child: TextFormField(
              obscureText: isPasswordHidden,
              validator: (text) =>
                  text!.isEmpty ? 'Password is Not Valid! ☹' : null,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintStyle: const TextStyle(fontSize: 17),
                labelText: 'Password',
                labelStyle: const TextStyle(
                  color: Colors.redAccent,
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    isPasswordHidden = !isPasswordHidden;
                    setState(() {});
                  },
                  icon: Icon(
                    isPasswordHidden ? Icons.visibility_off : Icons.visibility,
                    color: Colors.red,
                  ),
                ),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.all(10),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 22,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ButtonWidget(
            label: "Sign In",
            onTap: () {
                  Navigator.pushReplacement(
                 context,
                  MaterialPageRoute(builder: (context) => const DocHomePage()),
               );
              if (docState.currentState!.validate()) {
                print('data saved');
              }
            },
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        InkWell(
          onTap: () {},
          child: const Text(
            "  Forget Password?    ",
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.right,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(9.0),
        ),
        const Padding(
          padding: EdgeInsets.all(15.0),
          child: Text(
            "____________ or continue with _____________",
            style: TextStyle(fontSize: 20, color: Colors.grey),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Center(
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: const Icon(Icons.facebook,
                      size: 45, color: Color.fromARGB(255, 30, 65, 124)),
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/images/s3.png',
                    height: 38,
                  ),
                ),
              ],
            ),
          ),
        )
      ])),
    ));
  }
}
