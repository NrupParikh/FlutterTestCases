import 'package:flutter_application_1/base_structure/base/base_view_model_getx.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui' as ui;

import 'package:tuple/tuple.dart';

class SixPackViewModel extends BaseViewModel {
  RxDouble imageWidth = 0.0.obs;
  RxDouble imageHeight = 0.0.obs;

  RxDouble progress1 = 0.0.obs;
  RxDouble progress2 = 0.0.obs;

  RxInt goalCal = 1300.obs;
  RxInt leftCal = 1300.obs;

  RxBool isBurned = false.obs;
  RxInt currentCal = 0.obs;
  RxInt consumedCal = 0.obs;
  RxInt burnedCal = 0.obs;

  TextEditingController calController = TextEditingController();

  void updateBurnedCal(String submittedValue) {
    currentCal.value = currentCal.value - int.parse(submittedValue);
    burnedCal.value = burnedCal.value + int.parse(submittedValue);
  }

  void updateConsumedCal(String submittedValue) {
    currentCal.value = currentCal.value + int.parse(submittedValue);
    consumedCal.value = consumedCal.value + int.parse(submittedValue);
  }

  int remainingCal(){
    leftCal.value = (goalCal.value - currentCal.value);
    return leftCal.value;
  }

  Future<Tuple2<double, double>> loadImageDimensions(String assetPath) async {
    // Load image from assets
    final ByteData data = await rootBundle.load(assetPath);
    final Uint8List bytes = data.buffer.asUint8List();

    // Decode the image
    final ui.Image image = await decodeImageFromList(bytes);

    // Update the width and height in the controller
    imageWidth.value = image.width.toDouble();
    imageHeight.value = image.height.toDouble();

    print("imageWidth ${imageWidth.value.toDouble()}");
    print("imageHeight ${imageHeight.value.toDouble()}");

    return Tuple2(imageWidth.value, imageHeight.value);
  }
}
