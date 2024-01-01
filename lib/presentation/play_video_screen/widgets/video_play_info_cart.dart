import 'package:flutter/material.dart';
import 'package:flutter_bloc_with_api/res/text_style.dart';

class VideoPlayInfoCart extends StatelessWidget {
  const VideoPlayInfoCart({
    super.key,
    required this.imagePath,
    required this.title,
  });
  final String imagePath;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(width: 1, color: Colors.grey)),
      child: Column(children: [
        Image.asset(imagePath),
        Text(
          title,
          style: AppTextStyle.secondaryTextStyle,
        )
      ]),
    );
  }
}