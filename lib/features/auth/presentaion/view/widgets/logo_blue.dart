import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:meetings_app/constants.dart';
import 'package:sizer/sizer.dart';

class LogoBlue extends StatelessWidget {
  const LogoBlue({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Image.asset("assets/images/meeting.png",
          width: 11.w,),
        SizedBox(width: 4.w,),
        Image.asset("assets/images/line.png",
          height: 35,),
        SizedBox(width: 4.w,),
        Text("title".tr(),
          style:TextStyle(color: primaryColor, fontSize: 20, fontWeight: FontWeight.bold) ,)
        // Image.asset('assets/images/Texts/MMSText.png',
        //   width: 65.w,height: 60,)
      ],
    );
  }
}
