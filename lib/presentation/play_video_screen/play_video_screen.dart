import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_with_api/constant/assert_icon_image_path.dart';
import 'package:flutter_bloc_with_api/presentation/play_video_screen/widgets/comment_cart.dart';
import 'package:video_player/video_player.dart';
import '../../constant/assert_image_path.dart';
import '../../data/model/video_model_data.dart';
import '../../res/text_style.dart';
import 'widgets/video_play_info_cart.dart';

class PlayVideoScreen extends StatefulWidget {
  static const String routeName = "play-video-screen";
  const PlayVideoScreen({super.key, required this.videoDataResults});
  final VideoDataResults videoDataResults;

  @override
  State<PlayVideoScreen> createState() => _PlayVideoScreenState();
}

class _PlayVideoScreenState extends State<PlayVideoScreen> {
  late FlickManager flickManager;
  @override
  void initState() {
    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.networkUrl(
          Uri.parse(widget.videoDataResults.manifest)),
    );
    super.initState();
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            FittedBox(
              child: SizedBox(
                height: 230,
                child: FlickVideoPlayer(
                  flickManager: flickManager,
                ),
              ),
            ),
            ListTile(
              title: Text(widget.videoDataResults.title),
            ),
            Row(
              children: [
                SizedBox(
                  width: 24,
                ),
                Text(
                  "${widget.videoDataResults.viewers} Views",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  widget.videoDataResults.dateAndTime,
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
                  onTa: () {},
                ),
                VideoPlayInfoCart(
                  imagePath: AssertIconImagePath.like,
                  title: "LIKE (12k)",
                  onTa: () {},
                ),
                VideoPlayInfoCart(
                  imagePath: AssertIconImagePath.share,
                  title: "SHARE",
                  onTa: () {},
                ),
                VideoPlayInfoCart(
                  imagePath: AssertIconImagePath.report,
                  title: "REPORT",
                  onTa: () {},
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
                    image: widget.videoDataResults.channelImage,
                  ),
                ),
                title: Text(
                  widget.videoDataResults.channelName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                ),
                subtitle: Text(
                    "${widget.videoDataResults.channelSubscriber}  Subscribe",
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
                        "7.5k",
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
