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

Postisions paths = Postisions();

class PlayerData {
  static Map greenPlayer = {
    'color': Colors.green,
    'path': paths.greenPath,
  };
  static Map redPlayer = {
    'color': Colors.red,
    'path': paths.redPath,
  };
  static Map yellowPlayer = {
    'color': Colors.yellow,
    'path': paths.yellowPath,
  };
  static Map bluePlayer = {
    'color': Colors.blue,
    'path': paths.bluePath,
  };
}

enum SquarType { start, forColor, normal, protect }

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

class Postisions {
  final Tuple2 _greenStartEnd = const Tuple2(1, 6);
  final Tuple2 _redStartEnd = const Tuple2(14, 13);
  final Tuple2 _blueStartEnd = const Tuple2(27, 26);
  final Tuple2 _yellowStartEnd = const Tuple2(40, 39);
  List<Tuple2<int, int>> greenPath = [];
  List<Tuple2<int, int>> redPath = [];
  List<Tuple2<int, int>> yellowPath = [];
  List<Tuple2<int, int>> bluePath = [];

  List<Tuple2<int, int>> postions = [];
  List<Tuple2<int, int>> totalPath = [];
  Postisions() {
    for (var i = 0; i < 12; i++) {
      for (var y = 0; y < 6; y++) {
        postions.add(Tuple2(i, y));
      }
    }
    totalPath = postions.sublist(0, 6) +
        postions.sublist(30, 36).reversed.toList() +
        [postions[24]] +
        postions.sublist(18, 24) +
        postions.sublist(66, 72).reversed.toList() +
        [postions[60]] +
        postions.sublist(54, 60) +
        postions.sublist(48, 54).reversed.toList() +
        [postions[42]] +
        postions.sublist(36, 42) +
        postions.sublist(12, 18).reversed.toList() +
        [postions[6]];
    greenPath = totalPath.sublist(1) + postions.sublist(7, 12);
    redPath = totalPath.sublist(_redStartEnd.item1) +
        totalPath.sublist(0, _redStartEnd.item2) +
        postions.sublist(25, 30);
    yellowPath = totalPath.sublist(_yellowStartEnd.item1) +
        totalPath.sublist(0, _yellowStartEnd.item2) +
        postions.sublist(43, 48);
    bluePath = totalPath.sublist(_blueStartEnd.item1) +
        totalPath.sublist(0, _blueStartEnd.item2) +
        postions.sublist(61, 66);
  }
}
