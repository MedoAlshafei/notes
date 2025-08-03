import 'package:flutter/material.dart';
import 'package:notes/constants/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kSecondaryAccentColor,
      decoration: InputDecoration(
        hintText: 'Title',
        hintStyle: TextStyle(color: Colors.white70),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kSecondaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: BorderSide(color: color ?? Colors.white, width: 1.5),
    );
  }
}
