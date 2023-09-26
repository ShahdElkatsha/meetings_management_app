import 'package:flutter/material.dart';
import 'package:meetings_app/features/auth/presentaion/view/widgets/signup_view_body.dart';


class SignupScreen extends StatefulWidget {
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}
class _SignupScreenState extends State<SignupScreen> {
  // const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SignupViewBody(),

    );
  }
}

//
// class checkBoxModel {
//   String? titleCheckBox;
//   bool? valueCheckBox;
//
//   checkBoxModel({required this.titleCheckBox, this.valueCheckBox = false});
// }
