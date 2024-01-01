import 'package:flutter/material.dart';
import 'package:flutter_bloc_with_api/res/text_style.dart';

import '../../../constant/assert_image_path.dart';

class CommentCart extends StatelessWidget {
  const CommentCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 2,
            color: Color(0xffE2E8F0),
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(200),
            child: FadeInImage.assetNetwork(
              width: 40,
              height: 40,
              placeholder: AssertImagePath.loadingAnimation,
              fit: BoxFit.fill,
              image:
                  "https://mahfilbucket.s3.amazonaws.com/media_test/video_content_thumbnail/mob_thumbnail_HcaCk3ZbD1_1920x1080_7.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA5G25YRBXUVQTFY73%2F20231231%2Fap-south-1%2Fs3%2Faws4_request&X-Amz-Date=20231231T132538Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=893f443ffa2d5e2616f811872b0825b7997a474165d2fd489e018acd06439903",
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("Fahmida Khanom",
                      style: AppTextStyle.secondaryTextStyle),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "2 day ago",
                    style: AppTextStyle.secondaryTwoTextStyle,
                  )
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 10 * 8,
                child: Text(
                  "তাকদীর বা ভাগ্য কি পরিবর্তন করা যায়_ আবু ত্ব-হা মুহাম্মদ আদনান __ Abu Toha Muhammad Adnan ",
                  style: AppTextStyle.secondaryTextStyle,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
