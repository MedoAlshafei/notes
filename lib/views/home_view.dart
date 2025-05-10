import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes/views/widgets/add_note_bottom_sheet.dart';
import 'package:notes/views/widgets/notes_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // backgroundColor: Colors.transparent,
      body: NotesViewBody(),
      floatingActionButton: _FloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _FloatingActionButton extends StatelessWidget {
  const _FloatingActionButton();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(bottom: 16.h),
        child: FloatingActionButton(
          tooltip: 'Add Note',
          elevation: 2,
          backgroundColor:
              Theme.of(context).colorScheme.brightness == Brightness.light
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.secondaryFixed,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Icon(
            Icons.add_rounded,
            color:
                Theme.of(context).colorScheme.brightness == Brightness.light
                    ? Colors.white
                    : Theme.of(context).colorScheme.onSecondaryFixed,
            size: 28.sp,
          ),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              },
            );
          },
        ),
      ),
    );
  }
}
