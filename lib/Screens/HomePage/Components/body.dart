import 'package:audioplayer/Const/cnstant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';
import 'package:audioplayer/Provider/audio_player_provider.dart';
import 'package:audioplayer/Widgets/custom_appbar.dart';


class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AudioPlayerProvider>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Colors.black,
        appBar: const PreferredSize(
          preferredSize: Size(double.infinity ,200),
          child: Padding(
            padding: EdgeInsets.only(top: 50, bottom: 10),
            child: CustomAppbar(),
          ),
        ),
         body: Center(child: value.screens[value.selectedIndex]),
          bottomNavigationBar: SlidingClippedNavBar.colorful(
            backgroundColor: Colors.black,
            onButtonPressed: (index) {
              value.setSelectedIndex(index);
            },
            iconSize: 25,
            selectedIndex: value.selectedIndex,
            barItems: [
              BarItem(
                icon: Icons.home,
                title: 'Home',
                activeColor: textcolor,
                inactiveColor: Colors.white,
              ),
              BarItem(
                icon: Icons.search_rounded,
                title: 'Search',
                activeColor: textcolor,
                inactiveColor: Colors.white,
              ),
              BarItem(
                icon: Icons.dynamic_feed,
                title: 'Playlist',
                activeColor: textcolor,
                inactiveColor: Colors.white,
              ),
              BarItem(
                icon: Icons.more_horiz,
                title: 'More',
                activeColor: textcolor,
                inactiveColor: Colors.white,
              ),
            ],
          ),
        ),
    
    );
  }
}
