import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AuthSecondButton extends StatelessWidget {
  const AuthSecondButton({
    super.key,
    required this.text
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85.w,
      padding: EdgeInsets.symmetric(vertical: 1.4.h,horizontal: 7.w),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: const Color(0XFF194D9B))// Button background color
        // borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style:  const TextStyle(

          color: Color(0XFF194D9B),
          fontSize: 18.0,
        ),
      ),
    );
  }
}
