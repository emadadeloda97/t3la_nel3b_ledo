import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t3ala_nel3b_ludo/constants.dart';
import 'package:t3ala_nel3b_ludo/models/pieces.dart';
import 'package:t3ala_nel3b_ludo/models/squar.dart';
import 'package:t3ala_nel3b_ludo/views/my_widget.dart';

class SquarsCtrl extends GetxController {
  Rx<SquarsList> squarMx = SquarsList().obs;
}

class SquarsList {
  late List<List<Squar>> myList;
  final int _row = 12;
  final int _col = 6;
  SquarsList() {
    myList = List.generate(_row, (i) => List.generate(_col, (j) => Squar()));
    for (var i in [0, 3, 6, 9]) {
      myList[i][1] = Squar(color: colorNum[i], squarType: SquarType.start);
      for (var sq in myList[i + 1].sublist(1)) {
        sq.setColor = colorNum[i];
      }
      myList[i + 2][2].squarType = SquarType.protect;
    }
  }

  Squar getAt(a, b) {
    return myList[a][b];
  }

  void setColorAt(a, b) {
    myList[a][b].color = Colors.black;
  }

  void setItHasPieceAt(a, b, val) {
    myList[a][b].isHasPiece = val;
  }

  List<Squar> getLeftTop() {
    return myList[0];
  }

  List<Squar> getLeftMid() {
    return myList[1];
  }

  List<Squar> getLeftBot() {
    return myList[2];
  }

  List<Squar> getTopTop() {
    return myList[5];
  }

  List<Squar> getTopMid() {
    return myList[4];
  }

  List<Squar> getTopBot() {
    return myList[3];
  }

  List<Squar> getBottomTop() {
    return myList[6];
  }

  List<Squar> getBottomMid() {
    return myList[7];
  }

  List<Squar> getBottomBot() {
    return myList[8];
  }

  List<Squar> getRightTop() {
    return myList[11];
  }

  List<Squar> getRightMid() {
    return myList[10];
  }

  List<Squar> getRightBot() {
    return myList[9];
  }
}

// ignore: must_be_immutable
class TestWidget extends StatelessWidget {
  SquarsCtrl squarsCtrl;
  Postisions paths = Postisions();

  TestWidget({Key? key, required this.squarsCtrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SquarList(pieces: [
      Piece(
        path: paths.greenPath,
        pieceColor: Colors.black,
        squCtrl: squarsCtrl,
      )
    ]);
  }
}
