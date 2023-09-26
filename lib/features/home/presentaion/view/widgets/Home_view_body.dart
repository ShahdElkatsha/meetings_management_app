import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:meetings_app/features/home/presentaion/view/widgets/home_meetings_scroll.dart';
import 'package:meetings_app/features/home/presentaion/view/widgets/request_meeting_button.dart';
import 'package:meetings_app/features/home/presentaion/view/widgets/search_row.dart';
import 'package:sizer/sizer.dart';


class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 6.w,vertical: 2.h),
        child: SingleChildScrollView(
          child: Column(
            children: [

              //title
              Row(
                children: [
                  Image.asset("assets/images/meeting.png",
                    width: 11.w,),
                  SizedBox(width: 25.w,),
                   Text('meetings'.tr(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(width: 25.w,),
                  const Icon(Icons.add_alert,size: 27, )
                ],
              ),
              SizedBox(height: 3.h,),


              //search
              SearchRow(),
              SizedBox(height: 2.h,),



              //request for meating & meeting alert
              const RequestMeetingButton(),
              SizedBox(height: 3.h,),




              //the meetings scroll
             const HomeMeetingScroll(),



            ],
          ),
        ),
      ),
    );
  }


}
