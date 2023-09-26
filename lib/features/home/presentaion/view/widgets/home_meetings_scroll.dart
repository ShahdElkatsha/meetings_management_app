import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:image_stack/image_stack.dart';
import 'package:meetings_app/constants.dart';
import 'package:sizer/sizer.dart';

import '../../../../meeting_info/presentation/view/meeting_info_screen.dart';

class HomeMeetingScroll extends StatelessWidget {
  const HomeMeetingScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox( height: 67.h,width: 90.w,
      child: ListView.separated(
        separatorBuilder: (ctx,index)=>SizedBox(height: 2.h,),
        itemCount: 4,
        itemBuilder: (ctx,index)=> Stack(
            children:[
              //the background container
              SizedBox(
                width: 90.w,
                height: 43 .h,
              ),

              //the main container
              Positioned(
                bottom: 0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const MeetingInfoScreen()), // Navigate to SignupScreen
                    );
                  },
                  child: Container(
                    width: 90.w,
                    height: 39.h,
                    decoration: const BoxDecoration(
                        color:  Color.fromRGBO(25, 77, 155, 0.08)
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 1.h,horizontal: 5.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5.3.h,),

                           Text('meeting_name'.tr(),  textAlign: TextAlign.start,
                            style:  const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),),
                          SizedBox(height: 0.5.w,),

                           Text("Team_managed_software".tr(),
                            style:  const TextStyle(fontSize: 17),),
                          SizedBox(height: 2.5.h,),


                          Row(
                              children: [
                                Image.asset('assets/images/location_icon.png',width: 6.w,),
                                SizedBox(width: 1.w,),
                                 Text('Room_06'.tr(),style: const TextStyle(fontSize: 16, color: yellowcolor),),
                                SizedBox(width: 20.w,),

                                ImageStack(imageSource:  ImageSource.Asset,
                                  imageList: const [
                                    'assets/images/stack_images/img1.png',
                                    'assets/images/stack_images/img2.png',
                                    'assets/images/stack_images/img3.png',
                                    'assets/images/stack_images/img4.png',
                                  ], totalCount: 7, imageCount: 6,imageRadius: 35,imageBorderWidth: 0,extraCountTextStyle: const TextStyle(color: Colors.white), backgroundColor: const Color(0XFF194D9B),)

                              ]

                          ),
                          SizedBox(height: 2.5.h,),

                          //describtion
                          const Text('We will collaborate, share information, and find solutions as a team, no matter where we work from. They are an opportunity to use...',
                            style: TextStyle(fontSize: 16, height: 1.3),),
                          SizedBox(height: 2.h,),

                          const Divider(height: 1,thickness: 1,),
                          SizedBox(height: 2.h,),

                          //the time row
                          Row(
                            children: [
                              Icon(Icons.date_range_outlined, size: 6.w, color: Colors.grey,),
                              SizedBox(width: 1.w,),
                               Text('date'.tr() ,style:  const TextStyle(color: Colors.grey ,fontSize: 16),),
                              SizedBox(width: 5.w,),
                              Icon(Icons.access_time_outlined, size: 6.w, color: Colors.grey,),
                              SizedBox(width: 1.w,),
                               Text('time'.tr() ,style: const TextStyle(color: Colors.grey ,fontSize: 16),),

                            ],
                          )

                        ],
                      ),
                    ),
                  ),
                ),
              ),

              //the icon
              Positioned(
                top: 0,
                // left: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 8.w,),
                    SizedBox(
                      width: 18.w,
                      height: 10.h,

                      child:Image.asset('assets/images/lab_icon.png'),
                    ),
                  ],
                ),
              ),

            ]),


      ),
    );
  }
}
