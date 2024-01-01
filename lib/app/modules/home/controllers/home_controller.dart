import 'package:flutter_bloc_with_api/repository/home_screen_repo.dart';
import 'package:get/get.dart';

import '../../../../data/model/video_model_data.dart';

class HomeController extends GetxController {
  RxBool isLoading = RxBool(false);
  RxList<VideoDataResults> videoDataResultList = <VideoDataResults>[].obs;

  ///////////// create data fetch function
  fetchData() async {
    isLoading.value = true;
    var data = await HomeScreenRepo().fetchData();
    if (data != null || data.isNotEmpty) {
      videoDataResultList.addAll(data);
    }
    isLoading.value = false;
    update();
  }

  @override
  void onInit() {
    fetchData();
    super.onInit();
  }
}
