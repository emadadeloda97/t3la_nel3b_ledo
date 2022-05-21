import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t3ala_nel3b_ludo/controllers/squars_controller.dart';
import 'package:t3ala_nel3b_ludo/views/my_widget.dart';

class PlayBoardScreen extends StatelessWidget {
  PlayBoardScreen({Key? key}) : super(key: key);
  final SquarsCtrl ctrl = Get.put(SquarsCtrl());
  @override
  Widget build(BuildContext context) {
    final MediaQueryData media = MediaQuery.of(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () async {}),
      body: SafeArea(
        child: SizedBox(
            width: media.size.shortestSide * 0.2 / 3,
            height: media.size.shortestSide * 0.4 / 6,
            child: SquarList(pieces: [])),
      ),
    );
  }
}

class PlayBoardWidget extends StatelessWidget {
  const PlayBoardWidget({
    Key? key,
    required this.media,
    required this.ctrl,
  }) : super(key: key);

  final MediaQueryData media;
  final SquarsCtrl ctrl;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: media.size.shortestSide,
        height: media.size.shortestSide,
        // padding: const EdgeInsets.all(1),

        child: Row(
          children: [
            LeftWidget(media: media, controll: ctrl),
            Column(
              children: [
                TopWidget(media: media, controll: ctrl),
                CenterSquarSheap(media: media),
                BottomWidget(media: media, controll: ctrl)
              ],
            ),
            RightWidget(media: media, controll: ctrl),
          ],
        ),
      ),
    );
  }
}
