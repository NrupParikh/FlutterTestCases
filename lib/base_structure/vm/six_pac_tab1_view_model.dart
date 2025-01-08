// ignore_for_file: avoid_print

import 'package:flutter_application_1/base_structure/base/base_view_model_getx.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui' as ui;

import 'package:tuple/tuple.dart';

import '../../main.dart';

class SixPacTab1ViewModel extends BaseViewModel {
  RxDouble imageWidth = 0.0.obs;
  RxDouble imageHeight = 0.0.obs;

  RxDouble progress1 = 0.0.obs;
  RxDouble progress2 = 0.0.obs;

  RxDouble tempProgress = 0.0.obs;

  RxInt goalCal = 2000.obs;
  RxInt leftCal = 2000.obs;

  RxInt currentCal = 0.obs;
  RxInt consumedCal = 0.obs;
  RxInt burnedCal = 0.obs;


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

   void updateProgress(String submittedValue) {
    print("TAG_Is_Burned: ${isBurned.value}");
    print("TAG_Current_Cal: ${currentCal.value}");
    
    if (isBurned.value) {
      updateBurnedCal(submittedValue);
    
      tempProgress.value = (currentCal.value/goalCal.value)*2;
      print("Tag_Temp_Progress ${(tempProgress.value)}");
    
      if(tempProgress.value>=1 && tempProgress.value<2){
        progress2.value = (tempProgress.value-1).abs();
        print("TAG_Burn_1");
      }else if(tempProgress.value>0 && tempProgress.value<1){
        if(progress2.value!=0){
            progress2.value = 0;
           Future.delayed(const Duration(seconds: 3)).then((value) {
              progress1.value = tempProgress.value;
          });
        }else {
          progress1.value = tempProgress.value;
        }        
        print("TAG_Burn_2");                      
      }else if(tempProgress.value<=0){
        if(progress2.value!=0){
          progress2.value = 0;
          Future.delayed(const Duration(seconds: 3)).then((value) {
            progress1.value = 0;
          });
        }else {
          progress1.value = 0;
        }
        print("TAG_Burn_3");
      }
    
    } else {
    
      // If <0 then not affect any progress : Out of Bound
      // >0 to <=1 : Fill P1 is 100%
      // P2 : >1 to <2 : If P1 already 100% then only fill P2 remaining % or fill P1 100% and P2 remaining %
      // If >2 : If P1 already 100% then fill P2 100% or fill both P1 & P2 100%
    
      updateConsumedCal(submittedValue);
    
      tempProgress.value = (currentCal.value/goalCal.value)*2;
      print("Tag_Temp_Progress ${(tempProgress.value)}");
    
      if(tempProgress.value>0 && tempProgress.value<=1){
        print("TAG_Consume_1");
        progress1.value = (tempProgress.value);
      }else if(tempProgress.value>1 && tempProgress.value<2){
        print("TAG_Consume_2"); 
        if(progress1.value!=1){
          progress1.value = 1;
          Future.delayed(const Duration(seconds: 3)).then((value) {
              progress2.value = (tempProgress.value-1).abs();
          });
        }else {
          progress2.value = (tempProgress.value-1).abs();
        }    
      }else if(tempProgress.value>=2){
        print("TAG_Consume_3");
        if(progress1.value!=1){
          progress1.value = 1;
          Future.delayed(const Duration(seconds: 3)).then((value) {
            progress2.value = 1;
          });
        }else {
          progress2.value = 1;
        }
      }                            
    }
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
