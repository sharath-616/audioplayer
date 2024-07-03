import 'package:audioplayer/Const/cnstant.dart';
import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromARGB(255, 36, 31, 33),
                          suffixIcon: const Icon(
                            Icons.search,
                            color: textcolor,
                            size: 22,
                          ),
                          hintText: "Search...",
                          hintStyle: const TextStyle(color: textcolor),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                width: 2,
                                color: Colors.red,
                              ),
                              borderRadius: BorderRadius.circular(10))),
                    ),
    );
  }
}