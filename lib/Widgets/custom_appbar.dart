import 'package:audioplayer/Const/cnstant.dart';
import 'package:audioplayer/Widgets/custom_text.dart';
import 'package:audioplayer/Widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
            elevation: 0,
            centerTitle: true,
            title: const Padding(
              padding: EdgeInsets.all(8.0),
              child: CustomText(
                text: 'Paly List',
                size: 30,
                color: textcolor,
                fw: FontWeight.w700,
                letterSpacing: 5,
              ),
            ),
            bottom: const PreferredSize(
                preferredSize: Size.fromHeight(100),
                child: SizedBox(
                  height: 60,
                  child: CustomTextfield(),
                )),
            backgroundColor: Colors.black,
          );
  }
}
