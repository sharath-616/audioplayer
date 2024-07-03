import 'package:audioplayer/Screens/Home/home.dart';
import 'package:audioplayer/Screens/More/mode.dart';
import 'package:audioplayer/Screens/PlayList/play_list.dart';
import 'package:audioplayer/Screens/Search/search_screens.dart';
import 'package:flutter/material.dart';

class AudioPlayerProvider with ChangeNotifier {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void setSelectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  var screens = [const Home(), const SearchScreens(), const PlayList(), const More()];

  var images = [
    "https://m.media-amazon.com/images/I/51UDpiGLRPS._UXNaN_FMjpg_QL85_.jpg",
    "https://scontent.fcok6-1.fna.fbcdn.net/v/t39.30808-6/305488309_486726666796453_6972977668012992674_n.jpg?stp=dst-jpg_s851x315&_nc_cat=107&ccb=1-7&_nc_sid=da31f3&_nc_ohc=yu99hQfTGiUAX86100d&_nc_ht=scontent.fcok6-1.fna&oh=00_AfDzMsAZ8ZmdhJ5NRd7975qgLgFO5-tFEtETtPERnJes_Q&oe=648142EA",
    "https://podcastle.ai/blog/content/images/2022/01/Podcast-Music-1.png",
    "https://i.scdn.co/image/ab67616d0000b27370bae86d2779d5fd1d410cc5",
    "https://i.ytimg.com/an/sKmzb4ICz5A/7223600490774426405_mq.jpg?v=60b9aa77",
    "https://m.media-amazon.com/images/I/51UDpiGLRPS._UXNaN_FMjpg_QL85_.jpg",
    "https://scontent.fcok6-1.fna.fbcdn.net/v/t39.30808-6/305488309_486726666796453_6972977668012992674_n.jpg?stp=dst-jpg_s851x315&_nc_cat=107&ccb=1-7&_nc_sid=da31f3&_nc_ohc=yu99hQfTGiUAX86100d&_nc_ht=scontent.fcok6-1.fna&oh=00_AfDzMsAZ8ZmdhJ5NRd7975qgLgFO5-tFEtETtPERnJes_Q&oe=648142EA",
    "https://podcastle.ai/blog/content/images/2022/01/Podcast-Music-1.png",
    "https://i.scdn.co/image/ab67616d0000b27370bae86d2779d5fd1d410cc5",
    "https://i.ytimg.com/an/sKmzb4ICz5A/7223600490774426405_mq.jpg?v=60b9aa77",
  ];
}
