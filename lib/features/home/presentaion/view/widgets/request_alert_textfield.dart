import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RequestAlertTextField extends StatelessWidget {
   const RequestAlertTextField({
     super.key,
     required this.hintText,
     this.suffixIcon,
   });

  final String hintText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
            hintText: hintText,
            suffixIcon:suffixIcon,

            hintStyle: const TextStyle(fontSize: 17),
            border: const OutlineInputBorder(borderRadius: BorderRadius.zero,),
            contentPadding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 5.w)
        )
    );
  }
}
