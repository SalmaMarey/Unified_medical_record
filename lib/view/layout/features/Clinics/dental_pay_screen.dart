import 'package:flutter/material.dart';
import '../../home_screen.dart';

class DentalPaymentScreen extends StatefulWidget {
  const DentalPaymentScreen({Key? key}) : super(key: key);

  @override
  State<DentalPaymentScreen> createState() => _DentalPaymentScreenState();
}

class _DentalPaymentScreenState extends State<DentalPaymentScreen> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formstate = GlobalKey<FormState>();
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: formstate,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15,
                ),
                const Padding(padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "Continue to pay by credit card",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                (Image.asset(
                  "assets/images/s26.png",
                  height: 250.0,
                  width: 250.0,
                  fit: BoxFit.fill,
                )),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 12, right: 12,bottom: 5),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[300],
                    ),
                    width: 400,
                    height: 50,
                    child: const Text(
                      "The amount: 100LE",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                    padding:
                    const EdgeInsets.only(top: 15, left: 12, right: 12),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 12, right: 12),
                  child: TextFormField(
                    maxLength: 19,
                    validator: (text) =>
                    text!.isEmpty ? 'Numder is Not Valid! ☹' : null,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintStyle: const TextStyle(fontSize: 27),
                      labelText: 'Credit Card Numder',
                      labelStyle: const TextStyle(
                        color: Colors.redAccent,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 12, right: 12),
                  child: TextFormField(
                    maxLength: 5,
                    validator: (text) =>
                    text!.isEmpty ? 'Numder is Not Valid! ☹' : null,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintStyle: const TextStyle(fontSize: 20),
                      labelText: 'MM/YY',
                      labelStyle: const TextStyle(
                        color: Colors.redAccent,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 12, right: 12),
                  child: TextFormField(
                    maxLength: 3,
                    validator: (text) =>
                    text!.isEmpty ? 'Numder is Not Valid! ☹' : null,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintStyle: const TextStyle(fontSize: 20),
                      labelText: 'CVV',
                      labelStyle: const TextStyle(
                        color: Colors.redAccent,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                ),

                Container(
                  width: 130,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.red[500],
                  ),
                  child: InkWell(
                    child: const Center(
                        child: Text(
                          "Send",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        )),
                    onTap: () {
                      if (formstate.currentState!.validate()) {
                        print('data saved');

                        showDialog(
                          context: context,
                          builder: (ctx) => AlertDialog(
                              insetPadding: const EdgeInsets.symmetric(

                                vertical: 140.0,
                              ),
                              title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Center(
                                      child: Text(
                                        "Thank You!",
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    ),
                                    Center(
                                      child: Text(
                                        "Your transaction was successful",
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    ),
                                  ]),
                              content: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const ListTile(
                                      title: Text(
                                        "Date",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      subtitle: Text(
                                        "07 March 2023",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      trailing: Text(
                                        "8:23 PM",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    const ListTile(
                                        title: Text(
                                          "Zeina Marey",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black,
                                          ),
                                        ),
                                        subtitle: Text(
                                          "Zeina2008@gmail.com",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        trailing: CircleAvatar(
                                          backgroundImage: ExactAssetImage(
                                              'assets/images/s13.png'),
                                        )),
                                    const ListTile(
                                      title: Text(
                                        "Amount",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                        ),
                                      ),
                                      subtitle: Text(
                                        "100LE",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      trailing: Text(
                                        "Completed",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Container(
                                      color: Colors.grey[300],
                                      width: 300,
                                      height: 62,
                                      child: const ListTile(
                                        title: Text(
                                          "Credit Card ",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black,
                                          ),
                                        ),
                                        subtitle: Text(
                                          "Card ending ***4",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        leading: Icon(Icons.credit_score,
                                            color: Colors.red, size: 25),
                                      ),
                                    )
                                  ]),

                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(ctx).pop();
                                  },

                                  child: InkWell(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(10),
                                        color: Colors.red,
                                      ),
                                      padding: const EdgeInsets.all(14),
                                      child: const Text(
                                        "Done",
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
                                ),

                              ]),
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
        ),
      ),
    );
  }
}
