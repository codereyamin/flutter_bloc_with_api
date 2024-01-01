import 'package:flutter/material.dart';

import '../../../constant/assert_image_path.dart';
import '../../play_video_screen/play_video_screen.dart';

class HomeScreenCart extends StatelessWidget {
  const HomeScreenCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, PlayVideoScreen.routeName);
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
                      image:
                          "https://mahfilbucket.s3.amazonaws.com/media_test/video_content_thumbnail/mob_thumbnail_HcaCk3ZbD1_1920x1080_7.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA5G25YRBXUVQTFY73%2F20231231%2Fap-south-1%2Fs3%2Faws4_request&X-Amz-Date=20231231T132538Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=893f443ffa2d5e2616f811872b0825b7997a474165d2fd489e018acd06439903",
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
                            "3:16",
                            style: TextStyle(color: Colors.white),
                          )))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                        "https://mahfilbucket.s3.amazonaws.com/media_test/video_content_thumbnail/mob_thumbnail_HcaCk3ZbD1_1920x1080_7.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA5G25YRBXUVQTFY73%2F20231231%2Fap-south-1%2Fs3%2Faws4_request&X-Amz-Date=20231231T132538Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=893f443ffa2d5e2616f811872b0825b7997a474165d2fd489e018acd06439903",
                      ),
                    ),
                  ),
                ),
                title: Text(
                  "তাকদীর বা ভাগ্য কি পরিবর্তন করা যায়_ আবু ত্ব-হা মুহাম্মদ আদনান __ Abu Toha Muhammad Adnan",
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
                  width: 90,
                ),
                Text(
                  "53,500, Views",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "53,500, Views",
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
