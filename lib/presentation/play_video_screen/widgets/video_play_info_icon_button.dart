import 'package:flutter/material.dart';
import 'package:flutter_bloc_with_api/res/text_style.dart';

class VideoPlayInfoIconButton extends StatelessWidget {
  const VideoPlayInfoIconButton({
    super.key,
    required this.imagePath,
    required this.title,
    required this.onTa,
  });
  final String imagePath;
  final String title;
  final Function()? onTa;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTa, /////////// function
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(width: 1, color: Colors.grey)),
        child: Column(children: [
          Image.asset(imagePath), ////////// icon use image
          Text(
            title, ///////// icon button name
            style: AppTextStyle.secondaryTextStyle,
          )
        ]),
      ),
    );
  }
}
