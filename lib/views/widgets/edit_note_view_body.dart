import 'package:flutter/material.dart';
import 'package:notes/constants/strings.dart';
import 'package:notes/views/widgets/custom_app_bar.dart';
import 'package:notes/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          CustomAppBar(title: editNote, icon: Icons.check),
          const SizedBox(height: 20),
          CustomTextField(hint: 'Title'),
          const SizedBox(height: 16),
          CustomTextField(hint: 'Content', maxLines: 5),
          const Spacer(),
        ],
      ),
    );
  }
}
