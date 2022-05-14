import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t3ala_nel3b_ludo/views/play_board.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: PlayBoard(),
    );
  }
}
