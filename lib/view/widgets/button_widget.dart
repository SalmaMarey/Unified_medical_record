import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonWidget extends StatefulWidget {
  String label;
  void Function()? onTap;
  ButtonWidget({Key? key, required this.label, required this.onTap})
      : super(key: key);

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 100,
          height: 45,
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(23.0)),
          child: Center(
            child: Text(
              widget.label,
              style: const TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
