import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:meetings_app/features/meeting_info/presentation/view/widgets/info_tabBar.dart';
import 'package:meetings_app/features/meeting_info/presentation/view/widgets/meeting_name_container.dart';
import 'package:sizer/sizer.dart';

import '../../../tabBar_details/presentation/view/after_tab.dart';
import '../../../tabBar_details/presentation/view/before_tab.dart';
import '../../../tabBar_details/presentation/view/during_tab.dart';

class MeetingInfoScreen extends StatelessWidget {
   const MeetingInfoScreen({Key? key}) : super(key: key);

  // late TabController _tabController;

  // @override
  // void initState() {
  //   super.initState();
  //   _tabController = TabController(length: 3, vsync: this );
  // }
  // @override
  // void dispose(){
  //   _tabController.dispose();
  //   super.dispose();
  // }

  @override

  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
          child: Padding(
          padding: EdgeInsets.symmetric(
              // horizontal: 6.w,
              vertical: 2.h),
      child: Column(
      children: [

        //title
        Row(
          children: [
            SizedBox(width: 6.w,),
            Image.asset("assets/images/meeting.png",
              width: 10.w,),
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


        //meeting title
        const MeetingNameContainerInfoScreen(),


        //tap bar
       const InfoTabBar(),
            Expanded(
                child: TabBarView(
                  children: [
                    BeforeTabScreen(),
                    const DuringTabScreen(),
                    AfterTabScreen()
                  ],
                ),
            )


              ]
               ),
             ),
          ),
      ),
    );
  }
}
