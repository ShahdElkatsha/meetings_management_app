import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

class CustomTextField extends StatefulWidget {

  final TextEditingController controller;
  final String hintText;
  final Widget? suffixIcon; // Make the prefixIcon optional with ?
  final Widget? errorWidget;
  final String? errorText;

   const CustomTextField({
    super.key,
    required this.hintText,
    required this.controller,
     this.suffixIcon,
    this.errorWidget,
    this.errorText,

  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      controller: widget.controller,

      decoration: InputDecoration(
          hintText: widget.hintText,
          suffixIcon: widget.suffixIcon,
          hintStyle: const TextStyle(fontSize: 20),
          border: OutlineInputBorder(
            borderRadius:BorderRadius.circular(0),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 5.w)
      ),
    );
  }
}
