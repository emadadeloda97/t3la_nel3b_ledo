import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t3ala_nel3b_ludo/constants.dart';
import 'package:t3ala_nel3b_ludo/models/squar.dart';

class PlayBoard extends StatelessWidget {
  const PlayBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: media.size.shortestSide,
            height: media.size.shortestSide,
            // padding: const EdgeInsets.all(1),

            child: Row(
              children: [
                LeftWidget(media: media),
                Column(
                  children: [
                    TopWidget(media: media),
                    CenterSquarSheap(media: media),
                    BottomWidget(media: media)
                  ],
                ),
                RightWidget(media: media),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TopWidget extends StatelessWidget {
  const TopWidget({
    Key? key,
    required this.media,
  }) : super(key: key);

  final MediaQueryData media;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
                children: topSquars[0]
                    .map((e) => SmallSquarSheap(media: media, squar: e))
                    .toList()),
            Column(
                children: topSquars[1]
                    .map((e) => SmallSquarSheap(media: media, squar: e))
                    .toList()),
            Column(
                children: topSquars[2]
                    .map((e) => SmallSquarSheap(media: media, squar: e))
                    .toList())
          ],
        ),
        // Container(
        //   width: media.size.shortestSide * 0.2,
        //   height: media.size.shortestSide * 0.2,
        //   decoration: const BoxDecoration(color: Colors.pinkAccent),
        // ),
      ],
    );
  }
}

class BottomWidget extends StatelessWidget {
  const BottomWidget({
    Key? key,
    required this.media,
  }) : super(key: key);

  final MediaQueryData media;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
                children: bottomSquars[0]
                    .map((e) => SmallSquarSheap(media: media, squar: e))
                    .toList()),
            Column(
                children: bottomSquars[1]
                    .map((e) => SmallSquarSheap(media: media, squar: e))
                    .toList()),
            Column(
                children: bottomSquars[2]
                    .map((e) => SmallSquarSheap(media: media, squar: e))
                    .toList())
          ],
        ),
        // Container(
        //   width: media.size.shortestSide * 0.2,
        //   height: media.size.shortestSide * 0.2,
        //   decoration: const BoxDecoration(color: Colors.pinkAccent),
        // ),
      ],
    );
  }
}

class LeftWidget extends StatelessWidget {
  const LeftWidget({
    Key? key,
    required this.media,
  }) : super(key: key);

  final MediaQueryData media;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BigSquarSheap(media: media, color: SquarColors.green),
        Row(
            children: leftSquars[0]
                .map((e) => SmallSquarSheap(media: media, squar: e))
                .toList()),
        Row(
            children: leftSquars[1]
                .map((e) => SmallSquarSheap(media: media, squar: e))
                .toList()),
        Row(
            children: leftSquars[2]
                .map((e) => SmallSquarSheap(media: media, squar: e))
                .toList()),
        BigSquarSheap(media: media, color: SquarColors.yellow)
      ],
    );
  }
}

class RightWidget extends StatelessWidget {
  const RightWidget({
    Key? key,
    required this.media,
  }) : super(key: key);

  final MediaQueryData media;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BigSquarSheap(media: media, color: SquarColors.red),
        Row(
          children: rightSquars[0]
              .map((e) => SmallSquarSheap(media: media, squar: e))
              .toList(),
        ),
        Row(
          children: rightSquars[1]
              .map((e) => SmallSquarSheap(media: media, squar: e))
              .toList(),
        ),
        Row(
          children: rightSquars[2]
              .map((e) => SmallSquarSheap(media: media, squar: e))
              .toList(),
        ),
        BigSquarSheap(media: media, color: SquarColors.blue)
      ],
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = const Color.fromARGB(255, 0, 0, 0)
      ..strokeWidth = 1.5
      ..strokeCap = StrokeCap.round;
    double w = size.width;
    drawSquar(const Offset(0, 0), size, canvas, paint);
    drawSquar(Offset(size.width * 0.60, 0), size, canvas, paint);
    drawSquar(Offset(0, size.width * 0.60), size, canvas, paint);
    drawSquar(
        Offset(size.width * 0.60, size.width * 0.60), size, canvas, paint);

    canvas.drawLine(Offset(w * 0.4, 0), Offset(w * 0.4, w), paint);
    canvas.drawLine(Offset(w * 0.6, 0), Offset(w * 0.6, w), paint);
    canvas.drawLine(Offset(0, w * 0.4), Offset(w, w * 0.4), paint);
    canvas.drawLine(Offset(0, w * 0.6), Offset(w, w * 0.6), paint);

    canvas.drawLine(Offset(w * 0.4, w * 0.4), Offset(w * 0.6, w * 0.6), paint);
    canvas.drawLine(Offset(w * 0.4, w * 0.6), Offset(w * 0.6, w * .4), paint);

    canvas.drawLine(Offset(w * 0.4671, 0), Offset(w * 0.4671, w * 0.4), paint);
    canvas.drawLine(Offset(w * 0.4671, w * 0.6), Offset(w * 0.4671, w), paint);

    canvas.drawLine(Offset(w * 0.5342, 0), Offset(w * 0.5342, w * 0.4), paint);
    canvas.drawLine(Offset(w * 0.5342, w * 0.6), Offset(w * 0.5342, w), paint);

    canvas.drawLine(Offset(0, w * 0.4671), Offset(w * 0.4, w * 0.4671), paint);
    canvas.drawLine(Offset(w * 0.6, w * 0.4671), Offset(w, w * 0.4671), paint);

    canvas.drawLine(Offset(0, w * 0.5342), Offset(w * 0.4, w * 0.5342), paint);
    canvas.drawLine(Offset(w * 0.6, w * 0.5342), Offset(w, w * 0.5342), paint);
  }

  @override
  bool shouldRepaint(MyPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(MyPainter oldDelegate) => false;

  void drawSquar(Offset center, Size size, Canvas canvas, Paint paint) {
    double w = size.width * 0.40;
    Offset a = center;
    Offset b = Offset(center.dx + w, center.dy);
    Offset c = Offset(center.dx, center.dy + w);
    Offset d = Offset(center.dx + w, center.dy + w);
    canvas.drawLine(a, b, paint);
    canvas.drawLine(b, d, paint);
    canvas.drawLine(d, c, paint);
    canvas.drawLine(c, a, paint);
  }
}
