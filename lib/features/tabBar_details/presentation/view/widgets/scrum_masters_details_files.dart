import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ScrumMastersDetailsFiles extends StatelessWidget {
    const ScrumMastersDetailsFiles({
      super.key,
      this.rowSpaceBetween
    });
  final int? rowSpaceBetween;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Xd
        Row(children: [
          Image.asset('assets/images/files_icons/Xd_icon.png',width: 4.w,),
          SizedBox(width: 2.w,),
          Text('Scrum masters details file'.tr(),
            style: const TextStyle(fontSize: 15,),),
          SizedBox(width: rowSpaceBetween?.w,),
          Icon(Icons.file_upload_outlined,size: 5.w,color: Colors.blue,),
          SizedBox(width:1.w),
          Icon(Icons.visibility_outlined,size: 5.w,color: Colors.blue,),
        ],),
        SizedBox(height: 1.h,),
        const Divider(thickness: 1,),
        SizedBox(height: 1.h,),

        //adobe
        Row(children: [
          Image.asset('assets/images/files_icons/AdobePdfReader_icon.png',width: 3.5.w,),
          SizedBox(width: 2.w,),
          Text('Scrum masters details file'.tr(),
            style: const TextStyle(fontSize: 15,),),
          SizedBox(width: rowSpaceBetween?.w,),
          Icon(Icons.file_upload_outlined,size: 5.w,color: Colors.blue,),
          SizedBox(width:1.w),
          Icon(Icons.visibility_outlined,size: 5.w,color: Colors.blue,),
        ],),
        SizedBox(height: 1.h,),
        const Divider(thickness: 1,),
        SizedBox(height: 1.h,),

        //word
        Row(children: [
          Image.asset('assets/images/files_icons/Word_iconn.png',width: 3.5.w,),
          SizedBox(width: 2.w,),
          Text('Scrum masters details file'.tr(),
            style: const TextStyle(fontSize: 15,),),
          SizedBox(width: rowSpaceBetween?.w,),
          Icon(Icons.file_upload_outlined,size: 5.w,color: Colors.blue,),
          SizedBox(width:1.w),
          Icon(Icons.visibility_outlined,size: 5.w,color: Colors.blue,),
        ],),
        SizedBox(height: 1.h,),
        const Divider(thickness: 1,),
        SizedBox(height: 1.h,),

        //linked in
        Row(children: [
          Image.asset('assets/images/files_icons/linkedIn_icon.png',width: 4.w,),
          SizedBox(width: 2.w,),
          Text('Scrum masters details file'.tr(),
            style: const TextStyle(fontSize: 15,),),
          SizedBox(width: rowSpaceBetween?.w,),
          Icon(Icons.file_upload_outlined,size: 5.w,color: Colors.blue,),
          SizedBox(width:1.w),
          Icon(Icons.visibility_outlined,size: 5.w,color: Colors.blue,),
        ],),
        SizedBox(height: 1.h,),
        const Divider(thickness:1,),
        SizedBox(height: 1.h,),

        //github
        Row(children: [
          Image.asset('assets/images/files_icons/github_icon.png',width: 4.w,),
          SizedBox(width: 2.w,),
          Text('Scrum masters details file'.tr(),
            style: const TextStyle(fontSize: 15,),),
          SizedBox(width: rowSpaceBetween?.w,),
          Icon(Icons.file_upload_outlined,size: 5.w,color: Colors.blue,),
          SizedBox(width:1.w),
          Icon(Icons.visibility_outlined,size: 5.w,color: Colors.blue,),
        ],),

      ],
    );
  }
}
