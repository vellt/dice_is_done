import 'package:diece_gyak/controllers/dice_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DiceView extends StatelessWidget {
  DiceController controller = Get.put(DiceController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DiceController>(
      init: controller,
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Text('Dice'),
            backgroundColor: Colors.red,
          ),
          body: Center(
            child: CupertinoButton(
              child: Image.asset("images/dice${controller.faceNumber}.png"),
              onPressed: () {
                controller.changeDiceFace();
              },
            ),
          ),
        );
      },
    );
  }
}
