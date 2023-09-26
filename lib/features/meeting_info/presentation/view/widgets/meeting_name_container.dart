import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MeetingNameContainerInfoScreen extends StatelessWidget {
  const MeetingNameContainerInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 13.h,
      width: 100.w,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [

                Color.fromRGBO(25, 77, 155, 0.08),
                Color.fromRGBO(25, 77, 155, 0),
                // Colors.white,
              ])
      ),
      child: Row(children: [
        SizedBox(width: 2.w,),

        IconButton(onPressed: (){Navigator.of(context).pop();},
          icon: Icon(Icons.arrow_back,size: 7.w,),),
        SizedBox(width: 2.w,),

        Image.asset('assets/images/lab_icon.png', width: 14.w,),
        SizedBox(width: 4.w,),

        //meeting name text
        Column(children: [
          SizedBox(height:4.h,),

          //meeting name(weekly)
          Row(children: [
             Text('Meeting Name'.tr(),style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),), SizedBox(width: 1.w,),
             Text('(Weekly)'.tr(),style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0XFF194D9B)),),
          ],),
          SizedBox(height: 0.5  .h,),

          // Team-managed software
           Text("team_managed_software".tr(),style: const TextStyle(fontSize: 16),)
        ],)

      ],),
    );
  }
}
