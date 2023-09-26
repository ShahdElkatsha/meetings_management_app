import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../auth/presentaion/view/signup_view.dart';

class OnBoardGetStartedButton extends StatefulWidget {
  const OnBoardGetStartedButton({super.key});

  @override
  State<OnBoardGetStartedButton> createState() => _OnBoardGetStartedButtonState();
}

class _OnBoardGetStartedButtonState extends State<OnBoardGetStartedButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
              builder: (context) => SignupScreen()
          ), // Navigate to SignupScreen
        );
      },
      child: Container(width: 30.w,height: 5.h,
        decoration: const BoxDecoration(
            color: Color(0XFF194D9B)
        ),
        child: const Center(
            child: Text(
          'Get Started', style: TextStyle(
            color: Colors.white, fontSize: 16
        ),
        )),
      ),
    );
  }
}
