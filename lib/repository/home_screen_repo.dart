import 'package:flutter/material.dart';
import 'package:flutter_bloc_with_api/data/model/video_model_data.dart';
import 'package:flutter_bloc_with_api/data/remote/home_page_video_data.dart';

class HomeScreenRepo {
  fetchData() async {
    List<VideoDataResults> results = [];

    try {
      var data = await HomePageRemoteVideoData.getData();

      if (data!.results != null || data.results!.isNotEmpty) {
        for (var element in data.results!) {
          results.add(element);
        }
      }
      return results;
    } catch (e) {
      debugPrint(e.toString());
      /////////// error handling part
      ///but this time not implement yet
      /// sorry
    }

    return results;
  }
}
