import 'package:flutter/material.dart';
import 'package:meetings_app/features/home/presentaion/view/widgets/Home_view_body.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
          body: HomeViewBody(),
    );
  }

}
