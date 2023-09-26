import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:meetings_app/constants.dart';
import 'package:meetings_app/localization_checker.dart';
import 'package:sizer/sizer.dart';

class CustomLocalizatonButton extends StatefulWidget {
  const CustomLocalizatonButton({super.key});

  @override
  State<CustomLocalizatonButton> createState() => _CustomLocalizatonButtonState();
}

class _CustomLocalizatonButtonState extends State<CustomLocalizatonButton> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        LocalizationChecker.changeLanguge(context);

      },

      child: Container(
        width: 21.w,height: 5.5.h,
        decoration: BoxDecoration(
          border: Border.all(
            color: primaryColor, // Border color
            width: 1.5,         // Border width
          ),
        ),
        child: Center(
          child: Text(
            "language".tr(),
            style: TextStyle(
              color: primaryColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

      ),
    );
  }
}
