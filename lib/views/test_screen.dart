// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:t3ala_nel3b_ludo/controllers/squars_controller.dart';
// import 'package:t3ala_nel3b_ludo/models/squar.dart';

// class TestScreen extends StatelessWidget {
//   const TestScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final SquarsCtrl ctrl = Get.find(tag: 's');
//     final MediaQueryData media = MediaQuery.of(context);

//     return Scaffold(
//       floatingActionButton: FloatingActionButton(onPressed: () {
//         ctrl.mySquarFun();
//         ctrl.textFun();
//       }),
//       body: Center(
//         child: Column(
//           children: [
//             Obx(() => TestWidget(ctrl.mySquar.value)),
//             Obx(() => Text(ctrl.mySquar.value.toString())),
//             Obx(() => SmallSquarSheap(
//                   ctrl.mySquar.value,
//                   media: media,
//                 )),
//           ],
//         ),
//       ),
//     );
//   }
// }
