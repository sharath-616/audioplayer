import 'package:audioplayer/Widgets/custom_text.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: const Center(
          child: CustomText(
            text: 'More...',
            size: 20,
            color: Colors.white,
            fw: FontWeight.w400,
            letterSpacing: 5,
          ),
        ),),
      );
  
  }
}