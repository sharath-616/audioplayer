import 'package:audioplayer/Provider/audio_player_provider.dart';
import 'package:audioplayer/Screens/HomePage/Components/home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AudioPlayerProvider(),
        ),
      ],
      child: const MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
      title: 'Audio Player',
    );
  }
}

final GoRouter _router = GoRouter(
  initialLocation: HomePage.classId,
  routes: [
    GoRoute(
      path: HomePage.classId,
      builder: (context, state) => const HomePage(),
    ),
  ],
);
