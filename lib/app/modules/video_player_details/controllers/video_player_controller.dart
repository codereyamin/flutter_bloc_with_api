import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter_bloc_with_api/data/model/video_model_data.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class VideoPlayAndDetailsController extends GetxController {
  RxBool isLoading = RxBool(true);
  late VideoDataResults videoDataResults;
  late FlickManager flickManager; //////////  video player instant

  initialSetData() {
    isLoading.value = true;
    videoDataResults = Get.arguments;
  }

  initStateFileSet() {
    ////////////// video player initialize
    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.networkUrl(
          Uri.parse(videoDataResults.manifest)),
    );
    isLoading.value = false;
    update();
  }

  initialSet() {
    initialSetData();
    initStateFileSet();
  }

  @override
  void onInit() {
    initialSet();
    super.onInit();
  }

  @override
  void onClose() {
    flickManager.dispose();
    super.onClose();
  }

  @override
  void dispose() {
    /////////////// video player when not use then dispose or remove
    flickManager.dispose();
    super.dispose();
  }
}
