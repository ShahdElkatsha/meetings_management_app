import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomOnboardIndicators extends StatefulWidget {
   CustomOnboardIndicators({
     super.key ,
     required this.controller
   });
  PageController controller =PageController();

  @override
  State<CustomOnboardIndicators> createState() => _CustomOnboardIndicatorsState();
}

class _CustomOnboardIndicatorsState extends State<CustomOnboardIndicators> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
      child: Container(alignment: Alignment.centerLeft,
          child: SmoothPageIndicator(
            controller: widget.controller,
            count: 4 ,
            effect: ExpandingDotsEffect(
                dotWidth: 4.w,
                dotHeight: 1.1.h,
                dotColor: Colors.white60 ,
                activeDotColor: Colors.white
            ),
          )
      ),
    );
  }
}
