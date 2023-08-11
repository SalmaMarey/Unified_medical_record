import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/view/layout/home_screen.dart';
import 'package:graduation_project/view/widgets/button_widget.dart';
import 'Loginpage.dart';

class SignUppage extends StatefulWidget {
  const SignUppage({Key? key}) : super(key: key);

  @override
  State<SignUppage> createState() => _SignUppageState();
}

class _SignUppageState extends State<SignUppage> {
  bool isPasswordHidden = true;
  bool? check3 = false;
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> sinState = GlobalKey<FormState>();

    return Scaffold(
        // backgroundColor: Colors.white,
        body: Form(
      key: sinState,
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
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  icon: const Icon(Icons.arrow_back_rounded),
                  iconSize: 45,
                  color: Colors.red,
                ),
                const SizedBox(
                  width: 0,
                ),
                (Image.asset(
                  "assets/images/s33.png",
                  height: 200.0,
                  width: 290.0,
                  // fit: BoxFit.cover,
                )),
              ],
            )),
        const Text(
          " Sign up",
          style: TextStyle(
            fontSize: 30,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Please enter details to get registered",
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey,
              // fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 15),
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
                  text!.isEmpty ? 'UserName is Not Valid! ☹' : null,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintStyle: TextStyle(fontSize: 17),
                labelText: 'Username',
                labelStyle: TextStyle(
                  color: Colors.redAccent,
                ),
                suffixIcon: Icon(Icons.person_add, color: Colors.redAccent),
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(10),
              ),
            ),
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
                  text!.isEmpty ? 'Phone is Not Valid! ☹' : null,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintStyle: TextStyle(fontSize: 17),
                labelText: 'Phone',
                labelStyle: TextStyle(
                  color: Colors.redAccent,
                ),
                suffixIcon:
                    Icon(Icons.phone_android_sharp, color: Colors.redAccent),
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(10),
              ),
            ),
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
                  text!.isEmpty ? 'Confirmation is Not Valid! ☹' : null,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 17),
                    labelText: 'Confirm Password',
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

        Padding(
            padding: const EdgeInsets.only(top: 10),
            child: CheckboxListTile(
              checkColor: Colors.white,
              activeColor: Colors.red,

              value: check3,
              controlAffinity:
                  ListTileControlAffinity.leading, //checkbox at left
              onChanged: (bool? value) {
                setState(() {
                  check3 = value;
                });
              },
              title: RichText(
                text: TextSpan(
                  text: "By signing up, you agree to our ",
                  style: const TextStyle(color: Colors.grey, fontSize: 15),
                  children: <TextSpan>[

                    TextSpan(
                        text: 'Terms & Conditions and Privacy Policy ',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print('The button is clicked!');
                          },
                        style: const TextStyle(
                          color: Colors.red,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        )),
                  ],
                ),
              ),
            )),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ButtonWidget(
            label: "Sign Up",
            onTap: () {
              if (sinState.currentState!.validate()) {}
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
          ),
        ),
      ])),
    ));
  }
}
