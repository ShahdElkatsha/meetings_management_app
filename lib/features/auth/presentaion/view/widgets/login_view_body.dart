import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:meetings_app/constants.dart';
import 'package:meetings_app/features/auth/presentaion/view/widgets/auth_main_button.dart';
import 'package:meetings_app/features/auth/presentaion/view/widgets/auth_second_button.dart';
import 'package:meetings_app/features/auth/presentaion/view/widgets/custom_localization_button.dart';
import 'package:meetings_app/features/auth/presentaion/view/widgets/custom_textfield.dart';
import 'package:meetings_app/features/auth/presentaion/view/widgets/logo_blue.dart';
import 'package:sizer/sizer.dart';

import '../../../../home/presentaion/view/Home_view.dart';
import '../signup_view.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  bool passVisible = true;

  bool is_checked = false ;

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
          padding: EdgeInsets.symmetric(vertical: 3.h,horizontal: 6.w,),
          child: SingleChildScrollView(
              child: Column(
                children: [

                  //logo
                 const LogoBlue(),


                  SizedBox(height: 7.h,),

                  Row(

                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("welcome_Back,".tr(),
                            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                          ),
                          SizedBox(height: 2.h,),
                          Text("start_to_signup_with_your_data".tr(),
                            style: const TextStyle(color: Colors.grey,fontSize:18),)
                        ],
                      ),
                      SizedBox(width: 9.w,),

                      //localizaion button
                      const CustomLocalizatonButton(),
                    ],
                  ),

                  SizedBox(height: 3.5.h,),

                  //email
                  CustomTextField(hintText:   "enter_your_email".tr(), controller: email),



                  SizedBox(height: 3.5.h,),

                  //pass
                  TextFormField(
                    controller: password,

                    decoration: InputDecoration(
                      // suffixIcon: Icon(Icons.visibility_off_outlined),
                        suffixIcon: IconButton(
                          icon: Icon(
                              passVisible ? Icons.visibility : Icons.visibility_off_outlined
                          ),
                          onPressed:() {passwordVisibility();},
                        ),
                        hintText: 'enter_your_password'.tr(),
                        hintStyle: const TextStyle(fontSize: 20),
                        border: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(0),
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 5.w)
                    ),
                    obscureText: passVisible,
                  ),


                  SizedBox(height: 1.5.h,),

                  //keep me in login
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
                      // SizedBox(width: 1.w,),

                      Text("Keep_me_logged_in".tr(),
                        style: const TextStyle(
                          fontSize: 15,
                        ),),

                      SizedBox(width: 12.w,),

                      Text("forgot_password?".tr(),
                        style: const TextStyle(
                          color: primaryColor,
                          fontSize: 15,
                        ),),
                    ],
                  ),

                  SizedBox(height: 9.h,),

                  //login BUtton
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const HomeScreen()), // Navigate to SignupScreen
                      );
                    },
                    child: AuthMainButton(text: 'login'.tr()),

                  ),


                  SizedBox(height: 31.h,),

                  //Do not have account
                  Text("Don’t_have_an_account?".tr()),

                  SizedBox(height: 2.h,),

                  //  signup button
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SignupScreen()), // Navigate to SignupScreen
                      );
                    },
                    child: AuthSecondButton(text: 'signup'.tr()),
                  ),



                ],

              )
          )
      ),
    );
  }

  void passwordVisibility(){
    setState(() {
      passVisible = !passVisible;
    });
  }
}
