import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:meetings_app/features/auth/presentaion/view/widgets/auth_main_button.dart';
import 'package:meetings_app/features/auth/presentaion/view/widgets/auth_second_button.dart';
import 'package:meetings_app/features/auth/presentaion/view/widgets/custom_localization_button.dart';
import 'package:meetings_app/features/auth/presentaion/view/widgets/custom_textfield.dart';
import 'package:meetings_app/features/auth/presentaion/view/widgets/logo_blue.dart';
import 'package:sizer/sizer.dart';

import '../../../../home/presentaion/view/Home_view.dart';
import '../login_view.dart';

class SignupViewBody extends StatefulWidget {
   const SignupViewBody({super.key});


  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}
    TextEditingController userName = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController phoneNum = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController confirm_password = TextEditingController();
    bool passVisible = true;
    bool value = false;
    bool is_checked = false ;

class _SignupViewBodyState extends State<SignupViewBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 6.w,),
        child: SingleChildScrollView(
          child: Column(
            children: [
             //logo
              const LogoBlue(),

              SizedBox(height: 7.h,),

              Row(

                //welcome
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("welcome,".tr(),
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                      ),

                      SizedBox(height: 1.h,),

                      Text("start_to_signup_with_your_data".tr(),
                        style: TextStyle(color: Colors.grey,fontSize:18),)
                    ],
                  ),
                  SizedBox(width: 9.w,),

                  //localization container
                  const CustomLocalizatonButton(),
                ],
              ),

              SizedBox(height: 4.5.h,),

              //name
              CustomTextField(
                  hintText: "enter_your_full_name".tr(),
                  controller: userName),


              SizedBox(height: 3.5.h,),

              //email
              CustomTextField(
                  hintText: "enter_your_email".tr(),
                  controller: email),


              SizedBox(height: 3.5.h,),

              //phonenum
              CustomTextField(
                  hintText: "enter_phone_number".tr(),
                  controller: phoneNum),


              SizedBox(height: 3.5.h,),

              //pass
              // CustomTextField(
              //     hintText: 'Enter your password',
              //     controller: password,
              //     suffixIcon:IconButton(
              //       onPressed:() {
              //         passwordVisibility();
              //         },
              //       icon: Icon(passVisible ? Icons.visibility : Icons.visibility_off_outlined),
              //     ),
              // ),
              TextFormField(
                controller: password,

                decoration: InputDecoration(

                    suffixIcon: IconButton(
                      icon: Icon(
                          passVisible ? Icons.visibility : Icons.visibility_off_outlined
                      ),
                      onPressed:() {passwordVisibility();},
                    ),
                    hintText:  "enter_your_password".tr(),
                    hintStyle: const TextStyle(fontSize: 20),
                    border: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(0),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 5.w)
                ),
                obscureText: passVisible,
              ),

              SizedBox(height: 3.5.h,),

              //conPass
              TextFormField(
                controller: confirm_password,

                decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(
                          passVisible ? Icons.visibility : Icons.visibility_off_outlined
                      ),
                      onPressed:() {passwordVisibility();},
                    ),
                    hintText: "confirm_your_password".tr(),
                    hintStyle: const TextStyle(fontSize: 20),
                    border: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(0),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 5.w)
                ),
                obscureText: passVisible,
              ),

              SizedBox(height: 1.h,),

              //remember me
              Row(
                children: [

                  Checkbox(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    value:is_checked,
                    onChanged:(val){
                      setState(() {
                        is_checked = val!;
                      });
                    }, ),

                  SizedBox(width: 1.w,),

                   Text("remember_me".tr())
                ],
              ),


              SizedBox(height: 9.h,),

              //signUp BUtton
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HomeScreen()), // Navigate to SignupScreen
                  );
                },
                child:  AuthMainButton(text: 'signup'.tr())
              ),

              SizedBox(height: 5.h,),

              //allready have account
               Text("already_have_an_account?".tr()),

              SizedBox(height: 2.h,),

              //   login button
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const LoginScreen()), // Navigate to SignupScreen
                  );
                },
                child: AuthSecondButton(text: 'login'.tr())
              ),
            ],
          ),
        ),
      ),
    );
  }

  void passwordVisibility(){
    setState(() {
      passVisible = !passVisible;
    });
  }
}
