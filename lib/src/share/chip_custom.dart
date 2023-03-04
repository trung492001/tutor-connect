import 'package:flutter/material.dart';

class ChipCustom extends StatelessWidget {
  ChipCustom({super.key, required this.text});

  String text = "";

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        text,
        style: const TextStyle(
            fontSize: 12, color: Color.fromRGBO(0, 106, 188, 1)),
      ),
      backgroundColor: const Color.fromRGBO(0, 152, 241, 0.12),
      side: const BorderSide(width: 0.5, color: Color.fromRGBO(0, 152, 241, 1)),
    );
  }
}
