import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotesCard extends StatelessWidget {
  const NotesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red[50],
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
            trailing: IconButton(
              icon: Icon(Icons.delete, color: Colors.black),
              onPressed: () {
                // Handle delete action
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'May12, 2023',
              style: TextStyle(color: Colors.grey, fontSize: 12.sp),
            ),
          ),
          SizedBox(height: 10.h), // Add some space at the bottom
        ],
      ),
    );
  }
}
