import 'package:flutter/material.dart';

import '../../../constant/assert_image_path.dart';
import '../../../data/model/video_model_data.dart';
import '../../play_video_screen/play_video_screen.dart';

class HomeScreenCart extends StatelessWidget {
  const HomeScreenCart({super.key, required this.videoDataResults});
  final VideoDataResults videoDataResults;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, PlayVideoScreen.routeName,
            arguments: videoDataResults);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Container(
            height: height / 3,
            width: width,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(children: [
              Stack(
                children: [
                  SizedBox(
                    width: width,
                    height: height / 4.7,
                    child: FadeInImage.assetNetwork(
                      placeholder: AssertImagePath.loadingAnimation,
                      fit: BoxFit.cover,
                      image: videoDataResults.thumbnail,
                    ),
                  ),
                  Positioned(
                      bottom: 10,
                      right: 10,
                      child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            videoDataResults.duration,
                            style: TextStyle(color: Colors.white),
                          )))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                contentPadding: EdgeInsets.only(
                  right: 15,
                ),
                leading: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                        videoDataResults.channelImage,
                      ),
                    ),
                  ),
                ),
                title: Text(
                  videoDataResults.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: SizedBox(
                  width: 5,
                  child: PopupMenuButton(
                      padding: EdgeInsets.all(0),
                      iconColor: Colors.grey,
                      iconSize: 30,
                      itemBuilder: (_) => const <PopupMenuItem<String>>[],
                      onSelected: (_) {}),
                ),
              ),
              Row(children: [
                SizedBox(
                  width: 70,
                ),
                Text(
                  "${videoDataResults.viewers} Views",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  videoDataResults.dateAndTime,
                  style: TextStyle(color: Colors.grey),
                ),
              ]),
            ]),
          )
        ]),
      ),
    );
  }
}
