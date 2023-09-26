import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:meetings_app/constants.dart';
import 'package:sizer/sizer.dart';
import '../../../../tabBar_details/presentation/view/after_tab.dart';
import '../../../../tabBar_details/presentation/view/before_tab.dart';
import '../../../../tabBar_details/presentation/view/during_tab.dart';




class InfoTabBar extends StatelessWidget {
  const InfoTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 6.h,
          decoration: BoxDecoration(
              color: Colors.white ,
              borderRadius: BorderRadius.circular(10)
          ),

          child: TabBar(

            // controller: _tabController,
            indicator: BoxDecoration(
              color: const Color(0XFF194D9B),
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
              border: Border.all(color: primaryColor, ),
            ) ,

            labelColor: Colors.white,
            unselectedLabelStyle: const TextStyle(fontSize: 18) ,dividerColor: const Color(0XFF194D9B),
            labelStyle: const TextStyle(fontSize: 18),
            unselectedLabelColor: Colors.black,
            indicatorPadding: EdgeInsets.symmetric(horizontal: 4.w),

            tabs:  <Widget>[
              Tab(
                text: 'Before'.tr(),
              ),
              Tab(
                text: 'During'.tr(),
              ),
              Tab(
                text: 'After'.tr(),
              ),
            ],
          ),

        );

        // Expanded(
        //   child: TabBarView(
        //     children: [
        //       BeforeTabScreen(),
        //       const DuringTabScreen(),
        //       AfterTabScreen()
        //     ],
        //   ),



  }
}
