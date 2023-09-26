import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class NextAndBackContainer extends StatefulWidget {
   NextAndBackContainer({
     super.key,
     // required this.controller,
     required this.icon,
     // required this.ontap
   });

  // PageController controller =PageController();
   final Widget? icon;
    // Function ?ontap;

  @override
  State<NextAndBackContainer> createState() => _NextAndBackContainerState();
}

class _NextAndBackContainerState extends State<NextAndBackContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8.w,
      height: 3.8.h,
      decoration: BoxDecoration(
          color: Colors.white,borderRadius: BorderRadius.circular(20)
      ),
      child: widget.icon,
    );
  }
}
