import 'dart:io';

import 'package:flutter/material.dart';
import 'package:t3ala_nel3b_ludo/constants.dart';
import 'package:t3ala_nel3b_ludo/controllers/squars_controller.dart';
import 'package:tuple_dart/tuple.dart';

class Piece extends StatelessWidget {
  final Color pieceColor;
  Tuple2<int, int> itsPos;
  final MediaQueryData media;
  final SquarsCtrl squCtrl;
  final String pieceFor;
  final List<Tuple2<int, int>> posList;
  int lastPos = 0;

  Piece(
      {Key? key,
      this.itsPos = const Tuple2<int, int>(0, 0),
      required this.posList,
      required this.pieceColor,
      required this.squCtrl,
      required this.pieceFor,
      required this.media})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: (media.size.shortestSide * 0.2 / 3 / 2) - 6,
      backgroundColor: pieceColor,
    );
  }

  void moveToStartPos() {
    itsPos = posList[0];
    squCtrl.squarMx.update((val) {
      val?.myList[itsPos.item1][itsPos.item2].isHasPiece = true;
    });
  }

  void moveTo(int step) async {
    for (var i = lastPos; i < lastPos + step; i++) {
      var x = posList[i];
      squCtrl.squarMx.update((val) async {
        val?.myList[x.item1][x.item2].isHasPiece = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      squCtrl.squarMx.update((val) async {
        val?.myList[x.item1][x.item2].isHasPiece = false;
      });
    }
    lastPos = lastPos + step;
    itsPos = posList[lastPos];
    squCtrl.squarMx.update((val) {
      val?.myList[itsPos.item1][itsPos.item2].isHasPiece = true;
    });
  }
}
