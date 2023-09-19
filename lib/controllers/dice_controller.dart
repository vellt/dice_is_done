import 'dart:math';

import 'package:get/get_state_manager/get_state_manager.dart';

class DiceController extends GetxController {
  int faceNumber = 1;

  void changeDiceFace() {
    faceNumber = Random().nextInt(6) + 1;
    update();
  }
}
