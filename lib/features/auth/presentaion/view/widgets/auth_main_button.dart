import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class AuthMainButton extends StatelessWidget {
  const AuthMainButton({
    super.key,
    required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 85.w,
      padding: EdgeInsets.symmetric(
          vertical: 1.4.h,
          horizontal: 7.w
      ),
      decoration: const BoxDecoration(
        color: Color(0XFF194D9B), // Button background color
        // borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(

          color: Colors.white,
          fontSize: 18.0,
        ),
      ),
    );
  }
}
