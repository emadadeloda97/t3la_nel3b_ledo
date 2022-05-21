import 'package:flutter/material.dart';
import 'package:t3ala_nel3b_ludo/constants.dart';
import 'package:t3ala_nel3b_ludo/models/pieces.dart';

class Squar {
  Color color;
  SquarType squarType;
  bool isHasPiece;
  List<Piece> piecesList;
  Color pieceColor;

  Squar(
      {this.color = SquarColors.transparent,
      this.squarType = SquarType.normal,
      this.isHasPiece = false,
      this.piecesList = const [],
      this.pieceColor = SquarColors.transparent});

  set setColor(Color newColor) => color = newColor;

  @override
  String toString() =>
      'Squar(color: $color, isHasPiece: $isHasPiece, piecesList: $piecesList)';
}
