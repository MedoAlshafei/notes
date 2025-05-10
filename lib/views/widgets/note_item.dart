import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.cardColor});

  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 8.h, top: 8.h, left: 8.w, right: 8.w),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Theme.of(
              context,
            ).colorScheme.primaryContainer.withAlpha(100),
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
        borderRadius: BorderRadius.circular(16.r),
        color: cardColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: EdgeInsets.symmetric(
              horizontal: 10.w,
              vertical: 4.h,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
            tileColor: Theme.of(context).colorScheme.primaryContainer,
            // leading: const Icon(Icons.add_rounded),
            title: Text(
              'Note title',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 26.sp,
                fontWeight: FontWeight.w500,
                color:
                    Theme.of(context).colorScheme.brightness == Brightness.dark
                        ? Colors.white
                        : Colors.black,
              ),
            ),
            subtitle: Text(
              'Note description goes here. This is a sample note description.',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20.sp,
                fontWeight: FontWeight.w400,
                color:
                    Theme.of(context).colorScheme.brightness == Brightness.light
                        ? const Color.fromARGB(151, 97, 97, 97)
                        : Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.delete_rounded,
                color: Colors.black,
                size: 28.sp,
              ),
              onPressed: () {
                // Add your action here
              },
            ),
            onTap: () {
              // Add your action here
            },
          ),
          Text(
            'May 12, 2023',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color:
                  Theme.of(context).colorScheme.brightness == Brightness.light
                      ? const Color.fromARGB(151, 97, 97, 97)
                      : Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}
