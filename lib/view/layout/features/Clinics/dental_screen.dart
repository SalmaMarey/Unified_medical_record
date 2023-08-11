import 'package:flutter/material.dart';
import 'package:graduation_project/view/layout/features/Clinics/dental_pay_screen.dart';
import 'package:graduation_project/view/layout/home_screen.dart';
import 'package:graduation_project/view/widgets/drop_down_button_example.dart';
import 'eye_pay_screen.dart';

class DentalScreen extends StatefulWidget {
  const DentalScreen({Key? key}) : super(key: key);

  @override
  State<DentalScreen> createState() => _DentalScreenState();
}

class _DentalScreenState extends State<DentalScreen> {

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formstate = GlobalKey<FormState>();
    var dropdownValue;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Apply To Appointment ",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: const Icon(
          Icons.calendar_month_rounded,
          color: Colors.red,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Center(
                child: Text(
                  'Fill The Form',
                  style: TextStyle(
                      fontSize: 30, color: Colors.red, fontWeight: FontWeight.w700),
                )),
            Form(
              key: formstate,
              child: Column(
                children: [
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
                        text!.isEmpty ? 'Name is Not Valid! ☹' : null,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          hintStyle: TextStyle(fontSize: 17),
                          labelText: 'Name',
                          labelStyle: TextStyle(
                            color: Colors.redAccent,
                          ),
                          suffixIcon:
                          Icon(Icons.person, color: Colors.redAccent),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(5),
                        ),
                      ),
                    ),
                  ),  SizedBox(
                    height: 10,
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
                        text!.isEmpty ? 'ID is Not Valid! ☹' : null,
                        keyboardType: TextInputType.datetime,
                        decoration: const InputDecoration(
                          hintStyle: TextStyle(fontSize: 17),
                          labelText: 'ID',
                          labelStyle: TextStyle(
                            color: Colors.redAccent,
                          ),
                          suffixIcon: Icon(Icons.badge,
                              color: Colors.redAccent),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(5),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
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
                        text!.isEmpty ? 'Age is Not Valid! ☹' : null,
                        keyboardType: TextInputType.datetime,
                        decoration: const InputDecoration(
                          hintStyle: TextStyle(fontSize: 17),
                          labelText: 'Age',
                          labelStyle: TextStyle(
                            color: Colors.redAccent,
                          ),
                          suffixIcon: Icon(Icons.calendar_month_rounded,
                              color: Colors.redAccent),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(5),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 12, right: 12),
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(132, 184, 181, 181),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child:  const Expanded(


                        child: DropdownButtonExample(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
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
                        keyboardType: TextInputType.datetime,
                        decoration: const InputDecoration(
                          hintStyle: TextStyle(fontSize: 17),
                          labelText: 'phone',
                          labelStyle: TextStyle(
                            color: Colors.redAccent,
                          ),
                          suffixIcon:
                          Icon(Icons.phone, color: Colors.redAccent),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(5),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
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
                          suffixIcon:
                          Icon(Icons.email, color: Colors.redAccent),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(5),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
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
                        text!.isEmpty ? 'Date is Not Valid! ☹' : null,
                        keyboardType: TextInputType.datetime,
                        decoration: const InputDecoration(
                          hintStyle: TextStyle(fontSize: 17),
                          labelText: 'Date of appointment',
                          labelStyle: TextStyle(
                            color: Colors.redAccent,
                          ),
                          suffixIcon: Icon(Icons.calendar_month_rounded,
                              color: Colors.redAccent),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(5),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
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
                        text!.isEmpty ? 'Time is Not Valid! ☹' : null,
                        keyboardType: TextInputType.datetime,
                        decoration: const InputDecoration(
                          hintStyle: TextStyle(fontSize: 17),
                          labelText: 'Time of appointment',
                          labelStyle: TextStyle(
                            color: Colors.redAccent,
                          ),
                          suffixIcon:
                          Icon(Icons.alarm, color: Colors.redAccent),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(5),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 180,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.red[500],
                    ),
                    child: InkWell(
                      child: const Center(
                          child: Text(
                            "SUBMIT",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )),
                      onTap: () {
                        if (formstate.currentState!.validate()) {
                          print('data saved');

                          showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                              title: const Text("Welcome"),
                              content: const Text(
                                  "You must pay the fees to confirm the reservation."),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(ctx).pop();
                                  },
                                  child: Row(children: [
                                    InkWell(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(8),
                                          color: Colors.red,
                                        ),
                                        padding: const EdgeInsets.all(10),
                                        child: const Text(
                                          "Continue payment",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                const DentalPaymentScreen()));
                                        print("Save");
                                      },
                                    ),
                                    const SizedBox(
                                      width: 33,
                                    ),
                                    InkWell(
                                      child: Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(8),
                                          color: Colors.red,
                                        ),
                                        child: const Text(
                                          "Cancel ",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                const HomeScreen()));
                                        print("Save");
                                      },
                                    ),
                                  ]),
                                ),
                              ],
                            ),
                          );
                        }
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

