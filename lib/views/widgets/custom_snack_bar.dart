import 'package:flutter/material.dart';

class CustomSnackBar extends SnackBar {
  CustomSnackBar({super.key, required String text, required Color color})
    : super(
        content: Text(text, style: const TextStyle(color: Colors.black)),
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        duration: const Duration(milliseconds: 2000),
        backgroundColor: color,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      );
}
