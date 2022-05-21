import 'package:flutter/material.dart';

import 'package:t3ala_nel3b_ludo/controllers/squars_controller.dart';
import 'package:tuple_dart/tuple.dart';

class Piece {
  final Color pieceColor;
  Tuple2<int, int> itsPos;

  final SquarsCtrl squCtrl;
  final List<Tuple2<int, int>> path;
  int lastPos = 0;

  Piece({
    Key? key,
    this.itsPos = const Tuple2<int, int>(0, 0),
    required this.path,
    required this.pieceColor,
    required this.squCtrl,
  });

  void moveToStartPos() {
    itsPos = path[0];
    squCtrl.squarMx.update((val) {
      val?.myList[itsPos.item1][itsPos.item2].isHasPiece = true;
      val?.myList[itsPos.item1][itsPos.item2].pieceColor = pieceColor;
    });
  }

  void moveTo(int step) async {
    for (var i = lastPos; i < lastPos + step; i++) {
      var x = path[i];
      squCtrl.squarMx.update((val) async {
        val?.myList[x.item1][x.item2].isHasPiece = true;
        val?.myList[x.item1][x.item2].pieceColor = pieceColor;
      });
      await Future.delayed(const Duration(milliseconds: 300));
      squCtrl.squarMx.update((val) async {
        val?.myList[x.item1][x.item2].isHasPiece = false;
        val?.myList[x.item1][x.item2].pieceColor = pieceColor;
      });
    }
    lastPos = lastPos + step;
    itsPos = path[lastPos];
    squCtrl.squarMx.update((val) {
      val?.myList[itsPos.item1][itsPos.item2].isHasPiece = true;
      val?.myList[itsPos.item1][itsPos.item2].pieceColor = pieceColor;
    });
  }
}
