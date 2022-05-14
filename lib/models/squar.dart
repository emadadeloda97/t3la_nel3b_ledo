import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:t3ala_nel3b_ludo/constants.dart';

import 'package:t3ala_nel3b_ludo/my_icon_icons.dart';

enum SquarType { start, forColor, normal, protect }

class Squar {
  Color color;
  SquarType squarType;

  Squar({required this.color, required this.squarType});
}

List<List<Squar>> topSquars = [
  [
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
    Squar(color: SquarColors.transparent, squarType: SquarType.protect),
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
  ],
  [
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
    Squar(color: SquarColors.red, squarType: SquarType.forColor),
    Squar(color: SquarColors.red, squarType: SquarType.forColor),
    Squar(color: SquarColors.red, squarType: SquarType.forColor),
    Squar(color: SquarColors.red, squarType: SquarType.forColor),
    Squar(color: SquarColors.red, squarType: SquarType.forColor),
  ],
  [
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
    Squar(color: SquarColors.red, squarType: SquarType.start),
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
  ],
];

List<List<Squar>> bottomSquars = [
  [
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
    Squar(color: SquarColors.yellow, squarType: SquarType.start),
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
  ],
  [
    Squar(color: SquarColors.yellow, squarType: SquarType.forColor),
    Squar(color: SquarColors.yellow, squarType: SquarType.forColor),
    Squar(color: SquarColors.yellow, squarType: SquarType.forColor),
    Squar(color: SquarColors.yellow, squarType: SquarType.forColor),
    Squar(color: SquarColors.yellow, squarType: SquarType.forColor),
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
  ],
  [
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
    Squar(color: SquarColors.transparent, squarType: SquarType.protect),
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
  ],
];

List<List<Squar>> leftSquars = [
  [
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
    Squar(color: SquarColors.green, squarType: SquarType.start),
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
  ],
  [
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
    Squar(color: SquarColors.green, squarType: SquarType.forColor),
    Squar(color: SquarColors.green, squarType: SquarType.forColor),
    Squar(color: SquarColors.green, squarType: SquarType.forColor),
    Squar(color: SquarColors.green, squarType: SquarType.forColor),
    Squar(color: SquarColors.green, squarType: SquarType.forColor),
  ],
  [
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
    Squar(color: SquarColors.transparent, squarType: SquarType.protect),
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
  ],
];

List<List<Squar>> rightSquars = [
  [
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
    Squar(color: SquarColors.transparent, squarType: SquarType.protect),
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
  ],
  [
    Squar(color: SquarColors.blue, squarType: SquarType.forColor),
    Squar(color: SquarColors.blue, squarType: SquarType.forColor),
    Squar(color: SquarColors.blue, squarType: SquarType.forColor),
    Squar(color: SquarColors.blue, squarType: SquarType.forColor),
    Squar(color: SquarColors.blue, squarType: SquarType.forColor),
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
  ],
  [
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
    Squar(color: SquarColors.blue, squarType: SquarType.start),
    Squar(color: SquarColors.transparent, squarType: SquarType.normal),
  ],
];

class SmallSquarSheap extends StatelessWidget {
  final MediaQueryData media;
  final Squar squar;

  const SmallSquarSheap({
    Key? key,
    required this.media,
    required this.squar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: media.size.shortestSide * 0.2 / 3,
      height: media.size.shortestSide * 0.4 / 6,
      decoration: BoxDecoration(
        color: squar.color,
        border: Border.all(color: Colors.black, width: 0.5),
      ),
      child: squar.squarType == SquarType.protect ||
              squar.squarType == SquarType.start
          ? Icon(
              Icons.star_border,
              color: Colors.yellow[700],
            )
          : null,
    );
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
                      child: Icon(MyIcon.chess_piece)),
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
      decoration: BoxDecoration(),
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

class LeftTrianglePainter extends CustomPainter {
  Color color;
  LeftTrianglePainter({required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width / 2, size.width / 2);
    path.lineTo(0, size.width);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class BottomTrianglePainter extends CustomPainter {
  Color color;
  BottomTrianglePainter({required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(0, size.width);
    path.lineTo(size.width / 2, size.width / 2);
    path.lineTo(size.width, size.width);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class RightTrianglePainter extends CustomPainter {
  Color color;
  RightTrianglePainter({required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(size.width, 0);
    path.lineTo(size.width / 2, size.width / 2);
    path.lineTo(
      size.width,
      size.width,
    );
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class TopTrianglePainter extends CustomPainter {
  Color color;
  TopTrianglePainter({required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width / 2, size.width / 2);
    path.lineTo(size.width, 0);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
