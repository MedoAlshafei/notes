import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes/constants/colors.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon, this.onTap});

  final IconData icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(12),
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
        child: Center(child: Icon(icon, color: Colors.black87, size: 24.sp)),
      ),
    );
  }
}
