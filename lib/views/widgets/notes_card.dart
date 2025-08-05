import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes/constants/colors.dart';
import 'package:notes/views/edit_note_view.dart';

class NotesCard extends StatelessWidget {
  const NotesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const EditNoteView()),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: kOnPrimaryColor,
          border: BoxBorder.fromLTRB(
            top: BorderSide(color: Colors.black, width: 1),
            left: BorderSide(color: Colors.black, width: 1),
            right: BorderSide(color: Colors.black, width: 2.5),
            bottom: BorderSide(color: Colors.black, width: 2.5),
          ),
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'Note Title',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                child: Text(
                  'Note Subtitle',
                  style: TextStyle(color: Colors.black54, fontSize: 14.sp),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              trailing: InkWell(
                child: IconButton(
                  icon: Icon(Icons.delete, color: Colors.black),
                  onPressed: () {
                    // Handle delete action
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'May12, 2023',
                style: TextStyle(color: Colors.grey[850], fontSize: 12.sp),
              ),
            ),
            SizedBox(height: 10.h), // Add some space at the bottom
          ],
        ),
      ),
    );
  }
}
