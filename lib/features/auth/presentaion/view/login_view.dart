import 'package:flutter/material.dart';
// import 'package:meetings_app/features/auth/presentaion/view/signup_view.dart';
import 'package:meetings_app/features/auth/presentaion/view/widgets/login_view_body.dart';
// import 'package:sizer/sizer.dart';
// import '../../../Home_view.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: LoginViewBody(),
    );

  }


}
