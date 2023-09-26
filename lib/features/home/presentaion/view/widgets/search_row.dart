import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class SearchRow extends StatelessWidget {
   SearchRow({super.key});
  final TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

        Flexible(
          flex: 1,
          child:
          TextFormField(
              controller: search ,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: "search_for_meeting".tr(),
                  hintStyle: const TextStyle(fontSize: 17),
                  border: const OutlineInputBorder(borderRadius: BorderRadius.zero,
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 5.w)
              )

          ),

        ),
        SizedBox(width: 3.w,),
        Flexible(
          flex: 0,
          child:
          Container(
            width: 10.w, height: 5.h,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
            ),
            child: const Icon(Icons.search, color: Colors.grey,),
          ),
        ),
      ],
    );
  }
}
