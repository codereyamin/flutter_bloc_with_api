import 'package:flutter/material.dart';
import 'package:flutter_bloc_with_api/presentation/home_screen/home_screen.dart';
import 'package:flutter_bloc_with_api/presentation/play_video_screen/play_video_screen.dart';

import '../data/model/video_model_data.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case PlayVideoScreen.routeName:
        return MaterialPageRoute(
            builder: (_) => PlayVideoScreen(
                  videoDataResults: settings.arguments as VideoDataResults,
                ));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
