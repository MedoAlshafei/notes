import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        children: [
          Text(
            'Add New Note',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.red[100],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          CustomTextField(hint: 'Title'),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          CustomTextField(hint: 'Content', maxLines: 5),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
