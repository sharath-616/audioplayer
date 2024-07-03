import 'package:audioplayer/Const/cnstant.dart';
import 'package:audioplayer/Provider/audio_player_provider.dart';
import 'package:audioplayer/Widgets/custom_appbar.dart';
import 'package:audioplayer/Widgets/custom_text.dart';
import 'package:audioplayer/Widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      body: Consumer<AudioPlayerProvider>(
        builder: (context, value, child) => Container(
          color: Colors.black,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              crossAxisCount: 2,
            ),
            itemCount: value.images.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                      child: Image.network(
                        value.images[index],
                        fit: BoxFit.fill,
                      )),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
