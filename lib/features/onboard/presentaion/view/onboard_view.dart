import 'package:flutter/material.dart';
// import 'package:meetings_app/features/auth/signup_view.dart';
import 'package:meetings_app/features/onboard/presentaion/view/widgets/dot_indicator.dart';
import 'package:meetings_app/features/onboard/presentaion/view/widgets/next&back_container.dart';
import 'package:meetings_app/features/onboard/presentaion/view/widgets/onboard_getStarted_button.dart';
import 'package:meetings_app/features/onboard/presentaion/view/widgets/white_logo.dart';
import 'package:sizer/sizer.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoard_screen extends StatefulWidget {
  const OnBoard_screen({super.key});

  @override
  State<OnBoard_screen> createState() => _OnBoard_screenState();
}

class _OnBoard_screenState extends State<OnBoard_screen> {
  PageController _controller =PageController();
  // int _current_page_index =0;

  bool last_page = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children:[ PageView(
          onPageChanged: (index){
            setState(() {
              last_page = (index == 3);
            });
          },
          controller: _controller,
          children: [
            Image.asset('assets/images/onBoard_images/board_img1.png',fit: BoxFit.fill,width: 100.w,),
            Image.asset('assets/images/onBoard_images/board_img2.png',fit: BoxFit.fill,width: 100.w,),
            Image.asset('assets/images/onBoard_images/board_img3.png',fit: BoxFit.fill,width: 100.w,),
            Image.asset('assets/images/onBoard_images/board_img4.png',fit: BoxFit.fill,width: 100.w,),

          ],
        ),

          Column(
            children: [

            //top logo
             WhiteLogo(),

            SizedBox(height: 75.h,),



            Row(
              children: [

                //dot indicators
                CustomOnboardIndicators(controller: _controller),


                SizedBox(width:20.w),



                last_page ?     //if

                //get started container
                OnBoardGetStartedButton()

                    :  //otherwise

                //next & back containers
                Row(
                    children: [

                      SizedBox(width: 20,),

                     GestureDetector(
                       onTap: (){
                         _controller.animateToPage(
                             0,
                             duration: const Duration(milliseconds: 300),
                             curve: Curves.linear);

                       },
                       child: NextAndBackContainer(
                           icon: Icon( Icons.arrow_back_ios_new_rounded, size: 4.5.w,)
                       ),
                     ),


                      SizedBox(width:2.w),

                       //next
                     GestureDetector(
                       onTap: (){
                          _controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.linear);
                          // _current_page_index ++;
                         },
                       child: NextAndBackContainer(
                           icon:  Icon( Icons.navigate_next, size: 7.w,)
                       ),
                   ),
                   ],
                )
              ],
            ),

          ],)
    ]
      ),
    );
  }
}
