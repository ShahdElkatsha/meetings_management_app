// import 'package:flutter_html/flutter_html.dart' as html;

// import 'dart:html';

// import 'package:file_picker/file_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:image_stack/image_stack.dart';
import 'package:meetings_app/constants.dart';
import 'package:meetings_app/features/tabBar_details/presentation/view/widgets/task_details_after_tab.dart';
import 'package:sizer/sizer.dart';
// import 'package:open_file/open_file.dart';


 List<String> ToDo_list = <String>['To do'.tr(), 'study', 'learn', 'read'];

class AfterTabScreen extends StatefulWidget {
  const AfterTabScreen({super.key});

  @override
  State<AfterTabScreen> createState() => _AfterTabScreenState();
}

class _AfterTabScreenState extends State<AfterTabScreen> {
  // const AfterTabScreen({super.key});
  String? selectedDropdownItem;
  bool is_checked1 = false;

  bool is_checked2 = false;

  bool is_checked3 = false;

  bool is_checked4 = false;

  bool is_checked5 = false;

  // String _filePath = '';
  String dropdownValue = ToDo_list.first;


  // FilePickerResult? result;
  // String? fileName;
  // PlatformFile? pickedfile;
  // bool isLoading = false;
  // File? fileToDisplay;


  // try{
  //   setState(() {
  //     isLoading = true;
  //   });
  //
  //     result = await FilePicker.platform.pickFiles(
  //       type: FileType.any,
  //       allowMultiple: false,
  //     );
  //     if(result!= null){
  //       fileName = result!.files.first.name;
  //       pickedfile = result!.files.first;
  //       fileToDisplay = File(pickedfile!.path.toString() as List<Object>);
  //
  //     }
  //
  //     setState(() {
  //       isLoading = false;
  //     });
  //
  //   }catch(e){
  //
  //   }
  // }


  //
  // Future<void> _pickFile() async {
  //   FilePickerResult? result = await FilePicker.platform.pickFiles();

  //   if (result != null) {
  //     setState(() {
  //       _filePath = result.files.single.path!;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 4.5.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(height: 2.h,),

              //room
              Row(children: [
                Text('Room:'.tr(),
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                SizedBox(width: 2.w,),
                Text('Not Defined'.tr(),
                  style: const TextStyle(fontSize: 16, color: Color(0XFFF6A71A)),),
              ],),
              SizedBox(height: 2.5.h,),

              //Next Meeting Date
              Row(children: [
                Text('Next Meeting Date:'.tr(),
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                SizedBox(width: 2.w,),
                Icon(Icons.date_range_outlined, size: 6.w, color: Colors.grey,),
                SizedBox(width: 1.w,),
                Text('date'.tr(),
                  style: const TextStyle(color: Colors.grey, fontSize: 16),),
              ],),
              SizedBox(height: 1.h,),
              Row(
                children: [
                  Icon(
                    Icons.access_time_outlined, size: 6.w, color: Colors.grey,),
                  SizedBox(width: 1.w,),
                   Text('time'.tr(),
                    style: const TextStyle(color: Colors.grey, fontSize: 16),),
                ],
              ),
              SizedBox(height: 2.5.h,),


              //Meeting Duration Time
              Row(children: [
                Text('Meeting Duration Time:'.tr(),
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                SizedBox(width: 2.w,),
                Icon(
                  Icons.access_time_outlined, size: 6.w, color: Colors.grey,),
                SizedBox(width: 1.5.w,),
                Text('3 hours'.tr(),
                  style: const TextStyle(fontSize: 16, color: Colors.grey),)
              ],),
              SizedBox(height: 2.5.h,),

              //Next Organizer
              Row(children: [
                Text('Next Organizer:'.tr(),
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                SizedBox(width: 2.w,),
                const Text('Tarek Fouad Ali',
                  style: TextStyle(fontSize: 16, color: Colors.grey),)
              ],),
              SizedBox(height: 3.h,),

              //Members
              Row(children: [
                Text('Members:'.tr(),
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                SizedBox(width: 3.w,),
                ImageStack(imageSource: ImageSource.Asset,
                  imageList: const [
                    'assets/images/stack_images/img1.png',
                    'assets/images/stack_images/img2.png',
                    'assets/images/stack_images/img3.png',
                    'assets/images/stack_images/img4.png',
                  ],
                  totalCount: 7,
                  imageCount: 6,
                  imageRadius: 35,
                  imageBorderWidth: 0,
                  extraCountTextStyle: const TextStyle(color: Colors.white),
                  backgroundColor: primaryColor,)
              ],),
              SizedBox(height: 5.h,),

              //Conclusion (Follow Up)
              Text(
                'Conclusion (Follow Up):'.tr(), textAlign: TextAlign.start,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 18),),

              SizedBox(height: 1.5.h,),
              const Text(
                  '- Send everyone an email highlighting what the meeting accomplished \n- Link to any relevant pre-reading materials in advance \n- Assign facilitators for each agenda item \n- Define and prioritize agenda items \n- Use meeting agenda during the meeting to track notes and action items',
                  style: TextStyle(fontSize: 15, height: 1.5),
                  textAlign: TextAlign.start),


              //Decisions we’ve made
              SizedBox(height: 2.5.h,),
              Text(
                'Decisions we’ve made'.tr(), textAlign: TextAlign.start,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 18),),

              SizedBox(height: 1.5.h,),
              const Text(
                '- People will share their expertise to come to a group consensus \n- Leader decide on a particular decision \n- Having a process “Process Name” helps things move along smoothly.',
                style: TextStyle(fontSize: 15, height: 1.5),
                textAlign: TextAlign.start,),

              //Open discussion
              SizedBox(height: 2.5.h,),
              Text('Open discussion:'.tr(), textAlign: TextAlign.start,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 18),),

              SizedBox(height: 1.5.h,),
              const Text(
                'Your meeting agenda should inform all participants what the meeting objectives are, what will be discussed, and what kinds of decisions need to be made. Your agenda should include just enough context so that your team can familiarize themselves with the topic before the meeting begins.',
                style: TextStyle(fontSize: 15, height: 1.5),),
              SizedBox(height: 3.h,),


              //Task assigned to you
              Container(height: 40.h,
                width: 85.w,
                decoration: const BoxDecoration(color: Color(0xff194d9b14)),
                padding: EdgeInsets.all(3.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                  Text(
                    'Task assigned to you'.tr(), textAlign: TextAlign.start,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),),
                  SizedBox(height: 3.h,),

                  //task1
                  TaskDetailsAfterTab(isChecked: is_checked1,),
                  SizedBox(height: 0.5.h,),
                  const Divider(thickness: 1,),
                  SizedBox(height: 0.5.h,),

                  //task2
                  TaskDetailsAfterTab(isChecked: is_checked2),
                  SizedBox(height: 0.5.h,),
                  const Divider(thickness: 1,),
                  SizedBox(height: 0.5.h,),

                  //task3
                  TaskDetailsAfterTab(isChecked: is_checked3),
                  SizedBox(height: 0.5.h,),
                  const Divider(thickness: 1,),
                  SizedBox(height: 0.5.h,),

                  //task4
                  TaskDetailsAfterTab(isChecked: is_checked4),
                  SizedBox(height: 0.5.h,),
                  const Divider(thickness: 1,),
                  SizedBox(height: 0.5.h,),

                  //task5
                 TaskDetailsAfterTab(isChecked: is_checked5)

                ],),
              )


            ],
          ),
        ),
      ),

    );


      }

  // void openFile(PlatformFile file) async {
  //   openFile.open(file.path!);
  // }


}

