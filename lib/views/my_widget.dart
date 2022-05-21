import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t3ala_nel3b_ludo/constants.dart';
import 'package:t3ala_nel3b_ludo/controllers/squars_controller.dart';
import 'package:t3ala_nel3b_ludo/models/pieces.dart';
import 'package:t3ala_nel3b_ludo/views/pinters.dart';
import 'package:enhanced_enum/enhanced_enum.dart';
import '../models/squar.dart';
import '../my_icon_icons.dart';

//**************** four widget that containas small squars and arrangment */
class LeftWidget extends StatelessWidget {
  const LeftWidget({Key? key, required this.media, required this.controll})
      : super(key: key);

  final MediaQueryData media;
  final SquarsCtrl controll;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BigSquarSheap(media: media, color: SquarColors.green),
        Obx(
          () => Row(
              children: controll.squarMx.value
                  .getLeftTop()
                  .map((e) => SmallSquarSheap(e, media: media))
                  .toList()),
        ),
        Obx(
          () => Row(
              children: controll.squarMx.value
                  .getLeftMid()
                  .map((e) => SmallSquarSheap(e, media: media))
                  .toList()),
        ),
        Obx(
          () => Row(
              children: controll.squarMx.value
                  .getLeftBot()
                  .map((e) => SmallSquarSheap(e, media: media))
                  .toList()),
        ),
        BigSquarSheap(media: media, color: SquarColors.yellow)
      ],
    );
  }
}

class TopWidget extends StatelessWidget {
  const TopWidget({Key? key, required this.media, required this.controll})
      : super(key: key);

  final MediaQueryData media;
  final SquarsCtrl controll;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Obx(
              () => Column(
                  children: controll.squarMx.value
                      .getTopTop()
                      .map((e) => SmallSquarSheap(e, media: media))
                      .toList()),
            ),
            Obx(
              () => Column(
                  children: controll.squarMx.value
                      .getTopMid()
                      .map((e) => SmallSquarSheap(e, media: media))
                      .toList()),
            ),
            Obx(
              () => Column(
                  children: controll.squarMx.value
                      .getTopBot()
                      .map((e) => SmallSquarSheap(e, media: media))
                      .toList()),
            )
          ],
        ),
      ],
    );
  }
}

class BottomWidget extends StatelessWidget {
  const BottomWidget({
    Key? key,
    required this.controll,
    required this.media,
  }) : super(key: key);

  final MediaQueryData media;
  final SquarsCtrl controll;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Obx(
              () => Column(
                  children: controll.squarMx.value
                      .getBottomTop()
                      .map((e) => SmallSquarSheap(e, media: media))
                      .toList()
                      .reversed
                      .toList()),
            ),
            Obx(
              () => Column(
                  children: controll.squarMx.value
                      .getBottomMid()
                      .map((e) => SmallSquarSheap(e, media: media))
                      .toList()
                      .reversed
                      .toList()),
            ),
            Obx(
              () => Column(
                  children: controll.squarMx.value
                      .getBottomBot()
                      .map((e) => SmallSquarSheap(e, media: media))
                      .toList()
                      .reversed
                      .toList()),
            )
          ],
        ),
      ],
    );
  }
}

class RightWidget extends StatelessWidget {
  const RightWidget({
    Key? key,
    required this.controll,
    required this.media,
  }) : super(key: key);

  final MediaQueryData media;
  final SquarsCtrl controll;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BigSquarSheap(media: media, color: SquarColors.red),
        Obx(
          () => Row(
            children: controll.squarMx.value
                .getRightTop()
                .map((squar) => SmallSquarSheap(squar, media: media))
                .toList()
                .reversed
                .toList(),
          ),
        ),
        Obx(
          () => Row(
            children: controll.squarMx.value
                .getRightMid()
                .map((e) => SmallSquarSheap(e, media: media))
                .toList()
                .reversed
                .toList(),
          ),
        ),
        Obx(
          () => Row(
            children: controll.squarMx.value
                .getRightBot()
                .map((e) => SmallSquarSheap(e, media: media))
                .toList()
                .reversed
                .toList(),
          ),
        ),
        BigSquarSheap(media: media, color: SquarColors.blue)
      ],
    );
  }
}

//****************** squars sheaps *************************** */
class SmallSquarSheap extends StatelessWidget {
  final MediaQueryData media;
  final Squar squar;

  const SmallSquarSheap(
    this.squar, {
    Key? key,
    required this.media,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Container(
        width: media.size.shortestSide * 0.2 / 3,
        height: media.size.shortestSide * 0.4 / 6,
        decoration: BoxDecoration(
          color: squar.color,
          border: Border.all(color: Colors.black, width: 0.5),
        ),
        child: squar.squarType == SquarType.protect ||
                squar.squarType == SquarType.start
            ? const Icon(
                Icons.star,
                color: Color.fromARGB(255, 104, 100, 91),
              )
            : null,
      ),
      squar.isHasPiece
          ? CircleAvatar(
              backgroundColor: squar.pieceColor,
              child: Stack(children: []),
              radius: media.size.shortestSide * 0.2 / 3 / 2,
            )
          : const SizedBox()
    ]);
  }
}

class BigSquarSheap extends StatelessWidget {
  final MediaQueryData media;
  final Color color;
  const BigSquarSheap({Key? key, required this.media, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      width: media.size.shortestSide * 0.4,
      height: media.size.shortestSide * 0.4,
      decoration: BoxDecoration(
          color: color, border: Border.all(color: Colors.black, width: 0.5)),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    radius: media.size.shortestSide / 25,
                    backgroundColor: color,
                  ),
                  CircleAvatar(
                      radius: media.size.shortestSide / 25,
                      backgroundColor: color,
                      child: const Icon(
                        MyIcon.chess_piece,
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    radius: media.size.shortestSide / 25,
                    backgroundColor: color,
                  ),
                  CircleAvatar(
                    radius: media.size.shortestSide / 25,
                    backgroundColor: color,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CenterSquarSheap extends StatelessWidget {
  final MediaQueryData media;
  const CenterSquarSheap({Key? key, required this.media}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: media.size.shortestSide * 0.2,
      height: media.size.shortestSide * 0.2,
      decoration: const BoxDecoration(),
      child: Stack(children: [
        CustomPaint(
          size: Size(
              media.size.shortestSide * 0.2, media.size.shortestSide * 0.2),
          painter: LeftTrianglePainter(color: Colors.green),
        ),
        CustomPaint(
          size: Size(
              media.size.shortestSide * 0.2, media.size.shortestSide * 0.2),
          painter: BottomTrianglePainter(color: Colors.yellow),
        ),
        CustomPaint(
          size: Size(
              media.size.shortestSide * 0.2, media.size.shortestSide * 0.2),
          painter: RightTrianglePainter(color: Colors.blue),
        ),
        CustomPaint(
          size: Size(
              media.size.shortestSide * 0.2, media.size.shortestSide * 0.2),
          painter: TopTrianglePainter(color: Colors.red),
        )
      ]),
    );
  }
}

class SquarList extends StatelessWidget {
  List<Piece> pieces;
  SquarList({Key? key, required this.pieces}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: pieces.length == 1
          ? [CircleAvatar()]
          : [
              Align(
                alignment: Alignment.centerLeft,
                child: CircleAvatar(
                  radius: 7.5,
                  backgroundColor: Colors.black,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: CircleAvatar(
                  radius: 7.5,
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: CircleAvatar(
                  radius: 7.5,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 7.5,
                ),
              )
            ],
    );
  }
}
