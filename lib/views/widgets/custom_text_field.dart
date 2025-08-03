import 'package:flutter/material.dart';
import 'package:notes/constants/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLines = 1});

  final String hint;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kSecondaryAccentColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
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
