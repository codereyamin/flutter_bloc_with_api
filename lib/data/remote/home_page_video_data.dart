import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_with_api/constant/app_api_url.dart';

import '../model/video_model_data.dart';

class HomePageVideoData {
  HomePageVideoData._();

  static Future<VideoModelData?> getData() async {
    print("call data");
    final Dio dio = Dio();
    late VideoModelData data;
    try {
      Response response = await dio
          .get(AppApiUrl.trendingVideo, queryParameters: {"page": "1"});
      data = VideoModelData.fromJson(response.data);
      return data;
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }
}
