import 'package:flutter/material.dart';

class DropdownButtonExample2 extends StatefulWidget {
  const DropdownButtonExample2({super.key});

  @override
  State<DropdownButtonExample2> createState() => _DropdownButtonExample2State();
}

const List<String> list2 = <String>['Month','January', 'February','March','April','May','June','July','August','September','October','November','December'];

class _DropdownButtonExample2State extends State<DropdownButtonExample2> {
  String dropdownValue2 = list2.first;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: DropdownButton<String>(
        hint: const Text(
          "Month",
          style: TextStyle(color: Colors.red, ),
        ),
        isExpanded: true,
        underline: SizedBox(),
        value: dropdownValue2,
        icon: const Icon(Icons.arrow_drop_down,color: Colors.red,),
        elevation: 2,
        style: const TextStyle(color: Colors.red, fontSize:20,),
        onChanged: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            dropdownValue2 = value!;
          });
        },
        items: list2.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
