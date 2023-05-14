import 'package:flutter/material.dart';

class DropdownButtonExample3 extends StatefulWidget {
  const DropdownButtonExample3({super.key});

  @override
  State<DropdownButtonExample3> createState() => _DropdownButtonExample3State();
}

const List<String> list3 = <String>['Services','Eye clinic', 'Dental clinic','Pharmacy',];

class _DropdownButtonExample3State extends State<DropdownButtonExample3> {
  String dropdownValue3 = list3.first;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: DropdownButton<String>(
        hint: const Text(
          "Services",
          style: TextStyle(color: Colors.red, ),
        ),
        isExpanded: true,
        underline: SizedBox(),
        value: dropdownValue3,
        icon: const Icon(Icons.arrow_drop_down,color: Colors.red,),
        elevation: 2,
        style: const TextStyle(color: Colors.red, fontSize:20,),
        onChanged: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            dropdownValue3 = value!;
          });
        },
        items: list3.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
