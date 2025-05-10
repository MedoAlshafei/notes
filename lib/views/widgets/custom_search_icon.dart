import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 45.w,
      decoration: BoxDecoration(
        color: Colors.white12,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: IconButton(
        icon: const Icon(Icons.search_rounded),
        onPressed: () {
          // Add your action here
        },
      ),
    );
  }
}
