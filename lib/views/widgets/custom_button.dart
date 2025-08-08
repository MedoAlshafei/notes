import 'package:flutter/material.dart';
import 'package:notes/constants/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, this.isLoading = false});

  final void Function()? onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 55,
        width: MediaQuery.sizeOf(context).width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: black,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Center(
          child:
              isLoading
                  ? SizedBox(
                    height: 24,
                    width: 24,
                    child: const CircularProgressIndicator(color: Colors.white),
                  )
                  : const Text(
                    'Add',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
        ),
      ),
    );
  }
}
