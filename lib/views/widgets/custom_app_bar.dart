import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SizedBox(height: MediaQuery.of(context).padding.top),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Notes',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 32.sp,
                fontWeight: FontWeight.w600,
                color:
                    Theme.of(context).colorScheme.brightness == Brightness.light
                        ? Theme.of(context).colorScheme.onSurface
                        : Theme.of(context).colorScheme.onSurface,
              ),
            ),
            CustomSearchIcon(),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).padding.bottom),
      ],
    );
  }
}
