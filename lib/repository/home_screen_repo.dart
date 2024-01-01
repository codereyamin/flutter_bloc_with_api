import 'package:flutter/material.dart';

import '../data/model/video_model_data.dart';
import '../data/remote/home_page_video_data.dart';

class HomeScreenRepo {
  fetchData() async {
    print("call data 2");
    List<VideoDataResults> results = [];
    try {
      var data = await HomePageVideoData.getData();

      if (data!.results != null || data.results!.isNotEmpty) {
        for (var element in data.results!) {
          results.add(element);
        }
      }
      return results;
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
