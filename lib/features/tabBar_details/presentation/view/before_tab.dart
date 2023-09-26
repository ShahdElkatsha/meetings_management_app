import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:image_stack/image_stack.dart';
import 'package:meetings_app/features/tabBar_details/presentation/view/widgets/scrum_masters_details_files.dart';
import 'package:sizer/sizer.dart';

class BeforeTabScreen extends StatelessWidget {
  // const before_tab_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:  EdgeInsets.symmetric(vertical: 3.h, horizontal: 4.5.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(height: 2.h,),

              //room
              Row(children: [
                Text('Room:'.tr(),style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                SizedBox(width: 2.w,),
                Text('Room_06'.tr(),style: const TextStyle(fontSize: 16, color: Color(0XFFF6A71A)),),
              ],),
              SizedBox(height: 2.5.h,),

              //date
              Row(children: [
                Text('Date:'.tr(),style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                SizedBox(width: 1.w,),
                Icon(Icons.date_range_outlined, size: 6.w, color: Colors.grey,),
                SizedBox(width: 1.w,),
                Text('date'.tr() ,style: const TextStyle(color: Colors.grey ,fontSize: 16),),
                SizedBox(width: 2.w,),
                Icon(Icons.access_time_outlined, size: 6.w, color: Colors.grey,),
                SizedBox(width: 1.w,),
                Text('time'.tr() ,style: const TextStyle(color: Colors.grey ,fontSize: 16),),
              ],),
              SizedBox(height: 2.5.h,),

              //project
              Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Text('Project:'.tr(),style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                SizedBox(width: 2.w,),
                Text('Down Town Area'.tr(),style: const TextStyle(fontSize: 16,color: Colors.grey),)
              ],),
              SizedBox(height: 2.5.h,),

              //Organizer
              Row(children: [
                Text('Organizer:'.tr(),style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                SizedBox(width: 2.w,),
                Text('Tarek Fouad Ali'.tr(),style: const TextStyle(fontSize: 16,color: Colors.grey),)
              ],),
              SizedBox(height: 2.5.h,),

              //Members
              Row(children: [
                Text('Members:'.tr(),style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                SizedBox(width: 3.w,),
                ImageStack(imageSource:  ImageSource.Asset,
                  imageList: const [
                    'assets/images/stack_images/img1.png',
                    'assets/images/stack_images/img2.png',
                    'assets/images/stack_images/img3.png',
                    'assets/images/stack_images/img4.png',
                  ], totalCount: 7, imageCount: 6,imageRadius: 35,imageBorderWidth: 0,extraCountTextStyle: const TextStyle(color: Colors.white), backgroundColor: const Color(0XFF194D9B),)
              ],),
              SizedBox(height: 5.h,),

              //What we will discuss
              Text('What we will discuss:'.tr(),textAlign: TextAlign.start, style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),

              SizedBox(height: 1.5.h,),
              const Text('- Create and share your meeting agenda \n- Link to any relevant pre-reading materials in advance \n- Assign facilitators for each agenda item\n- Define and prioritize agenda items\n- Use meeting agenda during the meeting to track notes and action items',
                style: TextStyle(fontSize: 15,height: 1.5),),


              //Purpose of meeting
              SizedBox(height: 2.5.h,),
              Text('Purpose of meeting:'.tr(),textAlign: TextAlign.start,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),

              SizedBox(height: 1.5.h,),
              const Text('The purpose of the meeting: Your meeting agenda should inform all participants what the meeting objectives are, what will be discussed, and what kinds of decisions need to be made. Your agenda should include just enough context so that your team can familiarize themselves with the topic before the meeting begins.',
                style: TextStyle(fontSize: 15, height: 1.5),),

              //Meeting Equipment
              SizedBox(height: 2.5.h,),
              Text('Meeting Equipment:'.tr(),textAlign: TextAlign.start,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),

              SizedBox(height: 1.5.h,),
              const Text('- Easels to display posters, signage, or flip charts\n- Meeting and commercial-grade projectors\n- Wired and wireless microphone\n- Professional speaker timers',
                style: TextStyle(fontSize: 15, height: 1.5),),
              SizedBox(height: 3.h,),


              //Files to be discussed
              Container(height: 43.h,width:85.w,decoration: const BoxDecoration(color: Color(0xff194d9b14)),padding: EdgeInsets.all(3.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                  Text('Files to be discussed:'.tr(),textAlign: TextAlign.start,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  SizedBox(height: 2.5.h,),

                  ScrumMastersDetailsFiles(rowSpaceBetween: 12,)

                ],),
              )




            ],
          ),
        ),
      ),

    );
  }
}
