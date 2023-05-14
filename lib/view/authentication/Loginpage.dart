import 'package:flutter/material.dart';
import 'package:graduation_project/view/authentication/Signuppage.dart';
import 'package:graduation_project/view/layout/choice_screen.dart';
import 'package:graduation_project/view/layout/home_screen.dart';
import 'package:graduation_project/view/screens/doctors_screens/DocHome.dart';
import 'package:graduation_project/view/widgets/button_widget.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isPasswordHidden = true;
  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> patState = GlobalKey<FormState>();

    return Scaffold(
        // backgroundColor: Colors.white,
        body: Form(
      key: patState,
      child: InkWell(
          child: ListView(children: [ const SizedBox(
            height: 10,
          ),
        Padding(
            padding: const EdgeInsets.only(top: 4.0),
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
                  "assets/images/s8.png",
                  height: 220.0,
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
              color: Color.fromARGB(132, 184, 181, 181),
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
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 12, right: 12),
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              color: Color.fromARGB(132, 184, 181, 181),
              borderRadius: BorderRadius.circular(12),
            ),
            child: TextFormField(

              obscureText: isPasswordHidden,
              validator: (text) =>
                  text!.isEmpty ? 'Password is Not Valid! ☹' : null,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintStyle: TextStyle(fontSize: 17),
                labelText: 'Password',
                labelStyle: TextStyle(
                  color: Colors.redAccent,
                ),
                suffixIcon:  IconButton(
                  onPressed:() {
            isPasswordHidden = !isPasswordHidden;
            setState(() {});
            },
              icon: Icon(
                  isPasswordHidden ? Icons.visibility_off : Icons.visibility,color: Colors.red, ),
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(10),
              ),),
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
                  MaterialPageRoute(builder: (context) => HomeScreen()),
               );
              if (patState.currentState!.validate()) {
                print('data saved');
              }
            },
          ),
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
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "You don't have an account ?",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey),
            ),

            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUppage()));
              },
              child: const Text(
                "Sign up",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.red),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),const  Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "_____________ or continue with _____________",
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
            ),
        Padding(
          padding: EdgeInsets.all(2.0),
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
