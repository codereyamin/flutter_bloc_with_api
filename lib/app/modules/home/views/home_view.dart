import 'package:flutter/material.dart';
import 'package:flutter_bloc_with_api/app/modules/home/widgets/home_screen_cart.dart';
import 'package:flutter_bloc_with_api/utils/colors.dart';

import 'package:get/get.dart';

import '../../../../data/model/video_model_data.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryWiteColor,
      appBar: AppBar(
        title: const Text("Trending video"),
        forceMaterialTransparency: true,
      ),

      /////////// bloc builder function call
      body: GetBuilder(
          init: HomeController(),
          builder: (context) {
            return controller.isLoading.value
                ? const Center(
                    ///// loading sign show data fetch time
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: CircularProgressIndicator(),
                    ),
                  )

                ///////// data fetch than show builder method call
                : ListView.builder(
                    itemCount: controller.videoDataResultList.length,
                    itemBuilder: (context, index) {
                      VideoDataResults data = controller
                          .videoDataResultList[index]; ////// separate data

                      return HomeScreenCart(
                        //////// home cart widget call
                        videoDataResults: data,
                      );
                    },
                  );
          }),
    );
  }
}
