
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../onboard/presentaion/view/onboard_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 2500,
      backgroundColor: const Color(0XFF194D9B),
      splash: Scaffold(
        backgroundColor: const Color(0XFF194D9B),
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w,),
            child: Container(height: 100.h,
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/meeting_icon_white.png', width: 10.w,
                  ),
                  SizedBox(width: 3.w,),
                  Image.asset(
                    'assets/images/line_white.png', height: 4.h,
                  ),
                  SizedBox(width: 3.w,),
                  Image.asset(
                    'assets/images/Texts/MMS_text_white.png', width: 60.w,
                  ),


                ],
              ),
            ),
          ),
        ),
      ), nextScreen: const OnBoard_screen(),
      splashTransition: SplashTransition.scaleTransition,
      animationDuration: Duration(milliseconds: 1500),
    );

    //     Center(
    //     child: Padding(
    //       padding:  EdgeInsets.symmetric(horizontal: 10.w,),
    //       child: Container(
    //         child: Row(
    //           children: [
    //             Image.asset('assets/images/meeting_icon_white.png',width: 10.w,),
    //             SizedBox(width:3.w,),
    //             Image.asset('assets/images/line_white.png',height: 4.h,),
    //             SizedBox(width: 3.w,),
    //             Image.asset('assets/images/Texts/MMS_text_white.png',width: 60.w,),
    //
    //
    //           ],
    //         ),
    //       ),
    //     ),
    //   ) ;
    // }
    //
    // void initState(){
    //   super.initState();
    //   _navigateToOnBoard();
    // }
    //
    // _navigateToOnBoard()async{
    //   await Future.delayed(Duration(milliseconds: 1800 ), (){});
    //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
    // }
  }
}
