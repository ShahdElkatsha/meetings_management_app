import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:meetings_app/constants.dart';
import 'package:meetings_app/features/home/presentaion/view/widgets/request_alert_textfield.dart';
import 'package:sizer/sizer.dart';


class RequestMeetingButton extends StatefulWidget {
  const  RequestMeetingButton({super.key});

  @override
  State<RequestMeetingButton> createState() => _RequestMeetingButtonState();
}

class _RequestMeetingButtonState extends State<RequestMeetingButton> {
  String? selectedDropdownItem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => AlertDialog(
            title: Row(
              children: [
                 SizedBox(width: 45.w,
                     child: Text("request_to_Schedule_a_Meeting".tr())),
                SizedBox(width: 8.w,),

                IconButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  icon:const Icon(Icons.backspace_outlined),),
              ],
            ),

            content: SingleChildScrollView(
              child: ListBody(
                children:[
                  Column(
                    children: [

                      const Divider( height: 2, thickness: 2,),
                      const SizedBox(height: 18,),

                      //meeting name
                       RequestAlertTextField(hintText: "Meeting Name".tr()),

                      const SizedBox(height: 20,),

                      //meeting type
                      RequestAlertTextField(
                        hintText: "meeting_type".tr(),
                        suffixIcon: DropdownButton<String>(
                          value: selectedDropdownItem,
                          iconSize: 5,
                          style: const TextStyle(color: Colors.white,fontSize: 14),
                          icon: const Icon(Icons.expand_more),
                          items: const [
                             DropdownMenuItem(child: Text('college',)),
                            // DropdownMenuItem(child: Text('course',)),
                          ],
                          onChanged: (String? value) {  },
                        ),
                      ),


                      const SizedBox(height: 20,),

                      //meeting date
                      RequestAlertTextField(
                        hintText: 'Select available Date'.tr(),
                        suffixIcon:IconButton(
                            onPressed: _showDatePicker,
                            icon: const Icon(Icons.date_range_outlined)) ,
                      ),

                      const SizedBox(height: 20,),


                      //Select available Time
                      RequestAlertTextField(
                        hintText: 'Select available Time'.tr(),
                        suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.access_time_sharp)),
                      ),



                      const SizedBox(height: 20,),

                      //Select available room
                      RequestAlertTextField(
                        hintText: 'Select available room'.tr(),
                        suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.expand_more)),
                      ),


                      const SizedBox(height: 20,),

                      //Select Priority
                      RequestAlertTextField(
                        hintText: 'Select Priority'.tr(),
                        suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.expand_more)) ,
                      ),

                      const SizedBox(height: 20,),

                      //Select Tools
                      RequestAlertTextField(
                          hintText: 'Select Tools'.tr(),
                          suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.expand_more) ),
                      ),

                      const SizedBox(height: 20,),

                      //Add Food
                      TextField(
                          decoration: InputDecoration(
                              hintText: 'Add Food'.tr(),
                              hintStyle: const TextStyle(fontSize: 17),
                              border: const OutlineInputBorder(borderRadius: BorderRadius.zero,
                              ),
                              contentPadding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 5.w)
                          )
                      ),
                      const SizedBox(height: 20,),

                      //Add Description
                      TextField(
                          decoration: InputDecoration(

                              hintText: 'Add Description'.tr(),
                              hintStyle: const TextStyle(fontSize: 17),
                              border: const OutlineInputBorder(borderRadius: BorderRadius.zero,
                              ),
                              contentPadding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 5.w)
                          )
                      ),
                      const SizedBox(height: 20,),


                      //add guests
                      Row(
                        children: [
                          SizedBox(width: 2.w,),
                          Stack(
                              children:[ Container(
                                width: 5.5.w, height: 2.5.h,
                                padding: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  borderRadius:BorderRadius.circular(5) ,
                                  border: Border.all(
                                    color: primaryColor, // Border color
                                    width: 1.9,         // Border width
                                  ),
                                ),
                                // child: Icon(Icons.add,color:Color(0XFF194D9B),),
                              ),

                                 const Icon(Icons.add,color:primaryColor,),
                              ]
                          ),

                          SizedBox(width: 2.w,),

                           Text('Add Guests'.tr(),
                            style: const TextStyle(
                              color:  primaryColor,
                              fontSize: 16,
                            ),)
                        ],
                      ),
                      SizedBox(height: 4.h,),

                      //cancel & request button
                      Row(
                        children: [

                          //     cancel
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              width: 22.w,
                              padding: EdgeInsets.symmetric(vertical: 1.3.h,horizontal: 1.w),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.grey)// Button background color
                                // borderRadius: BorderRadius.circular(8.0),
                              ),
                              child:  Text(
                                'Cancel'.tr(),
                                textAlign: TextAlign.center,
                                style:  const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(width: 19.w,),

                          //     request
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              width: 26.w,
                              padding: EdgeInsets.symmetric(vertical: 1.3.h,horizontal: 2.1.w),
                              decoration: const BoxDecoration(
                                color: primaryColor, // Button background color
                                // borderRadius: BorderRadius.circular(8.0),
                              ),
                              child:  Text(
                                'Request'.tr(),
                                textAlign: TextAlign.center,
                                style: const TextStyle(

                                  color: Colors.white,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )

                    ],
                  ),
                ],
              ),
            ),
          )), // Navigate to SignupScreen
        );
      },
      child: Container(
        width: 90.w,
        padding: EdgeInsets.symmetric(vertical: 1.4.h,horizontal: 7.w),
        decoration: const BoxDecoration(
          color: primaryColor, // Button background color
        ),
        child:  Text(
          "request_to_Schedule_a_Meeting".tr(),
          textAlign: TextAlign.center,
          style: const TextStyle(

            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }


  void _showDatePicker () {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2024)
    );
  }
}
