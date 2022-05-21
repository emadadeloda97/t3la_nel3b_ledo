import 'package:flutter/material.dart';
import 'package:t3ala_nel3b_ludo/controllers/squars_controller.dart';

import 'package:tuple_dart/tuple.dart';

import 'pieces.dart';

class Player {
  Map playerData;
  List<Piece> playerPieces = [];
  bool isPlaying;
  bool isWin;
  SquarsCtrl squCtrl;
  MediaQueryData media;
  Player(
      {required this.playerData,
      this.isPlaying = false,
      this.isWin = false,
      required this.media,
      required this.squCtrl});

  void addPiece() {
    playerPieces.add(Piece(
      path: playerData['path'],
      pieceColor: playerData['color'],
      squCtrl: squCtrl,
    ));
  }

  void moveToStart(pieceNum) {
    playerPieces[pieceNum].moveToStartPos();
  }

  void moveTo(pieceNum, step) {
    playerPieces[pieceNum].moveTo(step);
  }

  set setIsPlaying(bool b) {
    isPlaying = b;
  }

  set setPiecePos(Tuple2<int, Piece> numPos) {
    playerPieces[numPos.item1] = numPos.item2;
  }
}
