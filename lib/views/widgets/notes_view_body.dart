import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes/views/widgets/custom_app_bar.dart';
import 'package:notes/views/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top),
          CustomAppBar(),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
