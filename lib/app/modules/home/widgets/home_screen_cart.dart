import 'package:flutter/material.dart';
import 'package:flutter_bloc_with_api/app/routes/app_pages.dart';
import 'package:flutter_bloc_with_api/constant/assert_image_path.dart';
import 'package:flutter_bloc_with_api/utils/colors.dart';
import 'package:flutter_bloc_with_api/utils/time_formate.dart';
import 'package:get/get.dart';

import '../../../../data/model/video_model_data.dart';

class HomeScreenCart extends StatelessWidget {
  const HomeScreenCart({super.key, required this.videoDataResults});
  final VideoDataResults videoDataResults;
  @override
  Widget build(BuildContext context) {
    /////// screen size & height with pic using mediaQuery
    ///
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        ///////// full cart design with wite color
        decoration: const BoxDecoration(
          color: AppColor.primaryWiteColor,
        ),
        child: Column(children: [
          GestureDetector(
            onTap: () {
              Get.toNamed(Routes.VIDEO_PLAYER, arguments: videoDataResults);
            },
            child: Stack(
              children: [
                //////////  show cart image
                SizedBox(
                  width: width,
                  height: height / 4.5,
                  child: FadeInImage.assetNetwork(
                    placeholder: AssertImagePath.loadingAnimation,
                    fit: BoxFit.cover,
                    image: videoDataResults.thumbnail,
                  ),
                ),

                ////////// show video duration
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      videoDataResults.duration,
                      style: const TextStyle(color: AppColor.primaryWiteColor),
                    ),
                  ),
                )
              ],
            ),
          ),

          /////////////
          /// show channel profile
          ListTile(
            contentPadding: const EdgeInsets.only(
              right: 15,
              top: 10,
            ),
            ///////// channel image
            leading: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: AppColor.primaryBlackColor,
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    videoDataResults.channelImage,
                  ),
                ),
              ),
            ),

            /////////// video title
            title: Text(
              videoDataResults.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),

            //////////////// total view & dateTime
            subtitle: Row(children: [
              Text(
                "${videoDataResults.viewers} Views",
                style: const TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                getTimeFormate(videoDataResults.dateAndTime),
                style: const TextStyle(color: Colors.grey),
              ),
            ]),

            ///////////// popup button
            trailing: SizedBox(
              width: 15,
              child: PopupMenuButton(
                  padding: const EdgeInsets.all(0),
                  iconColor: Colors.grey,
                  iconSize: 30,
                  itemBuilder: (_) => const <PopupMenuItem<String>>[
                        ////////////// this item ui make
                        PopupMenuItem(
                          value: "Test Item 1",
                          child: Text("Test Item 1"),
                        ),
                        PopupMenuItem(
                          value: "Test Item 2",
                          child: Text("Test Item 2"),
                        ),
                        PopupMenuItem(
                          value: "Test Item 3",
                          child: Text("Test Item 3"),
                        ),
                      ],
                  onSelected: (_) {}),
            ),
          ),
        ]),
      ),
    );
  }
}
