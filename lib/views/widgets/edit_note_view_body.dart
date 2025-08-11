import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/constants/strings.dart';
import 'package:notes/cubit/notes_cubit/notes_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/widgets/custom_app_bar.dart';
import 'package:notes/views/widgets/custom_snack_bar.dart';
import 'package:notes/views/widgets/custom_text_field.dart';
import 'package:notes/views/widgets/edit_note_colors_list.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subTitle;

  void snackStatus(BuildContext context) {
    if (widget.note.title == title && widget.note.subTitle == subTitle) {
      ScaffoldMessenger.of(context).showSnackBar(
        CustomSnackBar(
          text: 'The note title and content has been edited',
          color: Colors.green,
        ),
      );
    } else if (widget.note.title == title && widget.note.subTitle != subTitle) {
      ScaffoldMessenger.of(context).showSnackBar(
        CustomSnackBar(
          text: 'The note title only has been edited',
          color: Colors.green,
        ),
      );
    } else if (widget.note.title != title && widget.note.subTitle == subTitle) {
      ScaffoldMessenger.of(context).showSnackBar(
        CustomSnackBar(
          text: 'The note content only has been edited',
          color: Colors.green,
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        CustomSnackBar(text: 'The note has not been edited', color: Colors.red),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          CustomAppBar(
            onTap: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = subTitle ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
              snackStatus(context);
            },
            title: editNote,
            icon: Icons.check,
          ),
          const SizedBox(height: 20),
          CustomTextField(
            onChanged: (value) {
              title = value;
            },
            hint: widget.note.title,
          ),
          const SizedBox(height: 16),
          CustomTextField(
            onChanged: (value) {
              subTitle = value;
            },
            hint: widget.note.subTitle,
            maxLines: 5,
          ),
          const SizedBox(height: 16),
          EditNoteColorsList(note: widget.note),
          const Spacer(),
        ],
      ),
    );
  }
}
