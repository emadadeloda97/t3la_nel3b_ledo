import 'package:flutter/material.dart';
import 'package:tuple_dart/tuple_dart.dart';

class AppStrings {
  static const String backgroudImage = 'assets/images/lightbg2.png';
  static const String playingP = 'assets/images/p.svg';
  static const String playingPiece = 'assets/images/chess-piece.png';
}

class AppColors {
  static const Color playBoardColor = Color.fromARGB(255, 131, 82, 7);
}

class SquarColors {
  static const blue = Colors.blue;
  static const green = Colors.green;
  static const yellow = Colors.yellow;

  static const red = Colors.red;
  static const transparent = Colors.white;
}

const Map colorNum = {
  0: Colors.green,
  3: Colors.red,
  6: Colors.yellow,
  9: Colors.blue
};

const Map<String, Color> colorName = {
  'green': Colors.green,
  'red': Colors.red,
  'yellow': Colors.yellow,
  'blue': Colors.blue
};

const Map<String, Tuple2<int, int>> startPosByColor = {
  'green': Tuple2(0, 1),
  'red': Tuple2(3, 1),
  'yellow': Tuple2(6, 1),
  'blue': Tuple2(9, 1),
};

List<Tuple2<int, int>> greenPos = const [
  Tuple2(0, 1),
  Tuple2(0, 2),
  Tuple2(0, 3),
  Tuple2(0, 4),
  Tuple2(0, 5),
  Tuple2(5, 5),
  Tuple2(5, 4),
  Tuple2(5, 3),
  Tuple2(5, 2),
  Tuple2(5, 1),
  Tuple2(4, 0),
  Tuple2(3, 0),
  Tuple2(3, 1),
  Tuple2(3, 2),
  Tuple2(3, 3),
  Tuple2(3, 4),
  Tuple2(3, 5),
];
List<Tuple2<int, int>> redPos = const [
  Tuple2(3, 1),
  Tuple2(3, 2),
  Tuple2(3, 3),
  Tuple2(3, 4),
  Tuple2(3, 5),
  Tuple2(8, 5),
  Tuple2(8, 4),
  Tuple2(8, 3),
  Tuple2(8, 2),
  Tuple2(8, 1),
  Tuple2(7, 0),
  Tuple2(6, 0),
  Tuple2(6, 1),
  Tuple2(6, 2),
  Tuple2(6, 3),
  Tuple2(6, 4),
  Tuple2(6, 5),
];

const Map<String, Map<int, Tuple2<int, int>>> postionsMap = {};
