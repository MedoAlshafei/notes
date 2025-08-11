import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/widgets/colors_list_view.dart';
import 'package:notes/views/widgets/custom_button.dart';
import 'package:notes/views/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
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
          CustomTextField(
            hint: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
          CustomTextField(
            hint: 'Content',
            maxLines: 5,
            onSaved: (value) {
              subTitle = value;
            },
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
          ColorsListView(),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();

                    var currentDate = DateTime.now();
                    var formattedCurrentDate = DateFormat.yMd().format(
                      currentDate,
                    );

                    var noteModel = NoteModel(
                      title: title!,
                      subTitle: subTitle!,
                      date: formattedCurrentDate,
                      color: Colors.blue.value,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autoValidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
        ],
      ),
    );
  }
}
