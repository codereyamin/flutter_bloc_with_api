import 'package:flutter/material.dart';
import 'package:flutter_bloc_with_api/constant/assert_icon_image_path.dart';
import 'package:flutter_bloc_with_api/presentation/play_video_screen/widgets/comment_cart.dart';

import '../../constant/assert_image_path.dart';
import '../../res/text_style.dart';
import 'widgets/video_play_info_cart.dart';

class PlayVideoScreen extends StatelessWidget {
  static const String routeName = "play-video-screen";
  const PlayVideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              height: 230,
              color: Colors.amber,
            ),
            ListTile(
              title: Text(
                  "সে যদি দুই রাকাত নামাজ পড়ে সে যদি দুই রাকাত নামাজ পড়ে_ সে যদি দুই রাকাত নামাজ পড়ে Abu Taha Muhammad Adnan_ _Message of Life_"),
            ),
            Row(
              children: [
                SizedBox(
                  width: 24,
                ),
                Text(
                  "fjkghdh fkhfgh",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "fjkghdh fkhfgh",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                VideoPlayInfoCart(
                  imagePath: AssertIconImagePath.love,
                  title: "MASH AllAH",
                ),
                VideoPlayInfoCart(
                  imagePath: AssertIconImagePath.like,
                  title: "LIKE (12k)",
                ),
                VideoPlayInfoCart(
                  imagePath: AssertIconImagePath.share,
                  title: "SHARE",
                ),
                VideoPlayInfoCart(
                  imagePath: AssertIconImagePath.report,
                  title: "REPORT",
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 12),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                  ),
                ),
              ),
              child: ListTile(
                dense: true,
                contentPadding: EdgeInsets.only(left: 5, right: 10),
                minLeadingWidth: 50,
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(200),
                  child: FadeInImage.assetNetwork(
                    width: 50,
                    height: 60,
                    placeholder: AssertImagePath.loadingAnimation,
                    fit: BoxFit.fill,
                    image:
                        "https://mahfilbucket.s3.amazonaws.com/media_test/video_content_thumbnail/mob_thumbnail_HcaCk3ZbD1_1920x1080_7.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA5G25YRBXUVQTFY73%2F20231231%2Fap-south-1%2Fs3%2Faws4_request&X-Amz-Date=20231231T132538Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=893f443ffa2d5e2616f811872b0825b7997a474165d2fd489e018acd06439903",
                  ),
                ),
                title: Text(
                  "তাকদীর বা ভাগ্য কি পরিবর্তন করা যায়_ আবু ত্ব-হা মুহাম্মদ আদনান __ Abu Toha Muhammad Adnan",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                ),
                subtitle: Text(
                    "তাকদীর বা ভাগ্য কি পরিবর্তন করা যায়_ আবু ত্ব-হা মুহাম্মদ আদনান __ Abu Toha Muhammad Adnan",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle.primaryTextStyle),
                trailing: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        maximumSize: Size(110, 50),
                        padding: EdgeInsets.only(left: 5, right: 5),
                        backgroundColor: Color(0xff3898FC),
                        foregroundColor: Color(0xffFFFFFF),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4))),
                    onPressed: () {},
                    icon: Icon(Icons.add),
                    label: Text(
                      "Subscribe",
                      style: TextStyle(fontSize: 12),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Comments",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xff718096)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Comments",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xff718096)),
                      ),
                    ],
                  ),
                  Image.asset(
                    AssertIconImagePath.arrow,
                    width: 50,
                    height: 30,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                    constraints: BoxConstraints(maxHeight: 50),
                    hintText: "Add Comment",
                    hintStyle: TextStyle(color: Colors.grey),
                    isDense: true,
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.send,
                          color: Color(0xff718096),
                        )),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.grey,
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 4,
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.grey,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.grey,
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            CommentCart()
          ]),
        ),
      ),
    );
  }
}
