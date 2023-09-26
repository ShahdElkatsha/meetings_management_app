import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:meetings_app/features/tabBar_details/presentation/view/widgets/scrum_masters_details_files.dart';
import 'package:sizer/sizer.dart';

import '../../../../../constants.dart';
import '../after_tab.dart';


class TaskDetailsAfterTab extends StatefulWidget {

     bool isChecked;
     String? dropdownValue = ToDo_list.first;

     TaskDetailsAfterTab({
      super.key ,
      required this.isChecked,
       this.dropdownValue,
    });
   // final bool is_checked ;

  @override
  State<TaskDetailsAfterTab> createState() => _TaskDetailsAfterTabState();
}

class _TaskDetailsAfterTabState extends State<TaskDetailsAfterTab> {
  // String dropdownValue = ToDo_list.first;







  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      SizedBox(
        width: 4.w, height: 2.h,
        child: Checkbox(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)),
          value: widget.isChecked,
          onChanged: (val) {
            setState(() {
              widget.isChecked = val!;
            });
          },),
      ),
      // RadioListTile(
      //   title: Text("Male"),
      //   value: "male",
      //   groupValue: "male",
      //   onChanged: (value){
      //     setState(() {
      //
      //     });
      //   },
      // )
      SizedBox(width: 2.w,),
      Text('Task'.tr(),
        style: const TextStyle(fontSize: 16,),),
      SizedBox(width: 1.5.w,),
      Text('(14 April 2023)'.tr(),
        style: const TextStyle(fontSize: 14, color: Colors.grey),),
      SizedBox(width: 25.w,),

      //task details
      GestureDetector(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) =>
                  AlertDialog(
                    title: Row(
                      children: [
                        Text('Task name'.tr(),
                          style: const TextStyle(fontSize: 22),),
                        SizedBox(width: 30.w,),

                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(Icons.backspace_outlined),),
                      ],
                    ),

                    content: SingleChildScrollView(
                      child: ListBody(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 2.h, horizontal: 2.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              const Divider(height: 2, thickness: 2,),
                              SizedBox(height: 2.h,),


                              //attach
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () async {
                                      // final result = await FilePicker
                                      //     .platform.pickFiles();
                                      // if (result == null) return;
                                      // final File = result.files
                                      //     .first;
                                      // // openFile(file);
                                    },
                                    child: Container(width: 25.w,
                                        height: 6.8.h,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius
                                                .circular(5),
                                            color: const Color(
                                                0xff194d9b14)),
                                        child: Row(
                                          children: [
                                            SizedBox(width: 1.w,),
                                            const Icon(
                                              Icons.attach_file,
                                              color: Color(
                                                  0XFF194D9B),),
                                            SizedBox(width: 2.w),
                                             Text('attach'.tr(),
                                              style: const TextStyle(
                                                  color: Color(
                                                      0XFF194D9B)),),
                                          ],
                                        )
                                    ),
                                  ),
                                  SizedBox(width: 8.w,),


                                  //to do
                                  DropdownMenu<String>(
                                    width: 25.w,
                                    menuHeight: 15.h,
                                    initialSelection: ToDo_list
                                        .first,
                                    onSelected: (String? value) {
                                      // This is called when the user selects an item.
                                      setState(() {
                                        widget.dropdownValue = value!;
                                      });
                                    },
                                    dropdownMenuEntries: ToDo_list
                                        .map<DropdownMenuEntry<
                                        String>>((String value) {
                                      return DropdownMenuEntry<
                                          String>(value: value,
                                          label: value);
                                    }).toList(),
                                  ),


                                ],
                              ),
                              // SizedBox(height: 16),
                              // Text('Selected file: $_filePath'),


                              SizedBox(height: 2.h,),

                              Container(width: 25.w,
                                height: 6.h,
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1,
                                      color: Colors.grey,),
                                    borderRadius: BorderRadius
                                        .circular(5)),
                                child: Row(children: [
                                  SizedBox(width: 3.w,),
                                  Image.asset(
                                    'assets/images/equal22_icon.png',
                                    width: 3.w,),
                                  SizedBox(width: 2.w,),
                                  Text('Medium'.tr()),
                                ],),),


                              //Description
                              SizedBox(height: 2.5.h,),
                              Text('Description'.tr(),
                                textAlign: TextAlign.start,
                                style: const TextStyle(
                                    fontWeight: FontWeight
                                        .bold,
                                    fontSize: 18),),

                              SizedBox(height: 1.h,),
                              Container(
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dui, sem nunc, iaculis amet est. Lacus, amet dolor vulputate sodales tellus. Diam urna et, viverra nulla mollis placerat in morbi. In diam ipsum tristique eget pharetra',
                                  style: TextStyle(fontSize: 15,
                                      height: 1.3),),
                              ),
                              SizedBox(height: 3.h,),

                              //files
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Text('Files:'.tr(),
                                  textAlign: TextAlign.start,
                                  style: const TextStyle(
                                      fontWeight: FontWeight
                                          .bold,
                                      fontSize: 18),),
                                SizedBox(height: 2.5.h,),

                                ScrumMastersDetailsFiles(rowSpaceBetween: 5,),
                              ],),


                            ],),
                          )
                        ],
                      ),
                    ),
                  )));
        },
        child: Container(
            height: 3.h, width: 6.w,
            decoration: BoxDecoration(color: primaryColor,
                borderRadius: BorderRadius.circular(4)),
            child: Center(
                child: Icon(Icons.expand_less_outlined, size: 4.w,
                  color: Colors.white,))
        ),
      ),
    ],);
  }
}
