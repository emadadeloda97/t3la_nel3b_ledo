import 'package:flutter/material.dart';
import 'package:tuple_dart/tuple.dart';

import 'pieces.dart';

class Player {
  Color playerColor;
  List<Piece> piecesPos;
  int finishedPieces;
  bool isPlaying;
  bool isWin;
  Player(
      {required this.playerColor,
      this.isPlaying = false,
      this.finishedPieces = 0,
      this.isWin = false,
      required this.piecesPos});

  void addPiece(Piece p) {
    piecesPos.add(p);
  }

  set setColor(Color color) {
    playerColor = color;
  }

  set setIsPlaying(bool b) {
    isPlaying = b;
  }

  void setFinishedPieces(int numb) {
    finishedPieces = numb;
    if (finishedPieces == 4) {
      isWin = true;
    }
  }

  set setPiecePos(Tuple2<int, Piece> numPos) {
    piecesPos[numPos.item1] = numPos.item2;
  }
}
