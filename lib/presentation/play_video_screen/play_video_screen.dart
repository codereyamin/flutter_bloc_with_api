import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_with_api/constant/assert_icon_image_path.dart';
import 'package:flutter_bloc_with_api/presentation/play_video_screen/widgets/comment_cart.dart';
import 'package:video_player/video_player.dart';
import '../../constant/assert_image_path.dart';
import '../../data/model/video_model_data.dart';
import '../../res/text_style.dart';
import '../../res/time_formate.dart';
import 'widgets/video_play_info_icon_button.dart';

class PlayVideoScreen extends StatefulWidget {
  static const String routeName =
      "play-video-screen"; ////////////// route name define
  const PlayVideoScreen({super.key, required this.videoDataResults});
  final VideoDataResults videoDataResults; /////////// video data result define

  @override
  State<PlayVideoScreen> createState() => _PlayVideoScreenState();
}

class _PlayVideoScreenState extends State<PlayVideoScreen> {
  late FlickManager flickManager; //////////  video player instant
  @override
  void initState() {
    ////////////// video player initialize
    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.networkUrl(
          Uri.parse(widget.videoDataResults.manifest)),
    );
    super.initState();
  }

  @override
  void dispose() {
    /////////////// video player when not use then dispose or remove
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        /////////////// all screen scrollable
        child: SingleChildScrollView(
          child: Column(children: [
            /////////////  video player
            FittedBox(
              child: SizedBox(
                height: 230,
                child: FlickVideoPlayer(
                  flickManager: flickManager,
                ),
              ),
            ),

            ///////////// video title
            ListTile(
              title: Text(widget.videoDataResults.title),
            ),

            /////////// total views & publishing date
            Row(
              children: [
                const SizedBox(
                  width: 24,
                ),
                Text(
                  "${widget.videoDataResults.viewers} Views",
                  style: const TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  width: 20,
                ),

                //////////// publishing date formate
                Text(
                  getTimeFormate(widget.videoDataResults.dateAndTime),
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(
              height: 10, /////// using Space
            ),

            /////////////// all icon button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                VideoPlayInfoIconButton(
                  imagePath: AssertIconImagePath.love,
                  title: "MASH AllAH",
                  onTa: () {},
                ),
                VideoPlayInfoIconButton(
                  imagePath: AssertIconImagePath.like,
                  title: "LIKE (12k)",
                  onTa: () {},
                ),
                VideoPlayInfoIconButton(
                  imagePath: AssertIconImagePath.share,
                  title: "SHARE",
                  onTa: () {},
                ),
                VideoPlayInfoIconButton(
                  imagePath: AssertIconImagePath.report,
                  title: "REPORT",
                  onTa: () {},
                ),
              ],
            ),

            /////////////// channel profile
            Container(
              padding: const EdgeInsets.only(top: 10, bottom: 12),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    ////////// channel profile bottom separate margin
                    color: Colors.grey,
                  ),
                ),
              ),
              child: ListTile(
                dense: true,
                contentPadding: const EdgeInsets.only(left: 5, right: 10),
                minLeadingWidth: 50,
                leading: ClipRRect(
                  //////////////// channel profile image
                  borderRadius: BorderRadius.circular(200),
                  child: FadeInImage.assetNetwork(
                    width: 50,
                    height: 60,
                    placeholder: AssertImagePath.loadingAnimation,
                    fit: BoxFit.fill,
                    image: widget.videoDataResults.channelImage,
                  ),
                ),
                //////////////// channel name
                ///
                title: Text(
                  widget.videoDataResults.channelName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 14),
                ),
                //////////////// channel subscribe count
                subtitle: Text(
                    "${widget.videoDataResults.channelSubscriber}  Subscribe",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle.primaryTextStyle),

                /////////// channel subscribe button
                ///
                trailing: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        maximumSize: const Size(110, 50),
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        backgroundColor: const Color(0xff3898FC),
                        foregroundColor: const Color(0xffFFFFFF),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4))),
                    onPressed: () {},
                    icon: const Icon(Icons.add),
                    label: const Text(
                      "Subscribe",
                      style: TextStyle(fontSize: 12),
                    )),
              ),
            ),
            /////////////// total comment
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
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

            //////////////// comment input field box
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                    constraints: const BoxConstraints(maxHeight: 50),
                    hintText: "Add Comment",
                    hintStyle: const TextStyle(color: Colors.grey),
                    isDense: true,
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.send,
                          color: Color(0xff718096),
                        )),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.grey,
                      ),
                    ),
                    disabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 4,
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.grey,
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.grey,
                      ),
                    )),
              ),
            ),
            const SizedBox(
              height: 5,
            ),

            ///////////////  in per comment comment locks
            const CommentCart()
          ]),
        ),
      ),
    );
  }
}
