import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_button.dart';
import 'package:notes/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Add New Note',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                // fontFamily: GoogleFonts.poppins().fontFamily,
                color: Colors.black,
              ),
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
            CustomTextField(hint: 'Title'),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
            CustomTextField(hint: 'Content', maxLines: 5),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.07),
            CustomButton(),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
          ],
        ),
      ),
    );
  }
}
