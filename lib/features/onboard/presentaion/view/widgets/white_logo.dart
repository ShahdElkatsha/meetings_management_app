import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class WhiteLogo extends StatelessWidget {
  const WhiteLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 5.h),
      child: Container(
        child: Row(
          children: [
            Image.asset('assets/images/meeting_icon_white.png',width: 10.w,),
            SizedBox(width:3.w,),
            Image.asset('assets/images/line_white.png',height: 4.5.h,),
            SizedBox(width: 3.w,),
            Image.asset('assets/images/Texts/MMS_text_white.png',width: 60.w,),
          ],
        ),
      ),
    );
  }
}
