import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/constants/app_colors.dart';
import 'package:flutter_application_1/base_structure/ui/six_pac_log_activity_screen.dart';
import 'package:flutter_application_1/base_structure/vm/six_pac_tab1_view_model.dart';
import 'package:get/get.dart';
import 'package:simple_animation_progress_bar/simple_animation_progress_bar.dart';
import 'package:tuple/tuple.dart';

import '../../main.dart';

// https://www.gifgit.com/
class SixPacTab1Screen extends BaseScreen<SixPacTab1ViewModel> {
  const SixPacTab1Screen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    double myViewWidth = 300;
    double myViewHeight = 392;

    // vm.loadImageDimensions("assets/images/img_six_pac.png");

    return Obx(() => Container(
          width: deviceWidth,
          height: deviceHeight,
          color: ColorConstant.backgroundBlueColor,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 34,),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: myViewWidth,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                flex: 1,
                                child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Text("CALORIE TRACKER"))),
                            Image(
                                color: Colors.white,
                                width: 24,
                                height: 24,
                                image: AssetImage("assets/images/ic_edit.png"))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      // ========================= V PROGRESS BAR 1
                      Center(
                        child: SizedBox(
                          width: myViewWidth - 32, // Fore remove border
                          height: myViewHeight - 1,
                          child: SimpleAnimationProgressBar(
                            ratio: vm.progress1.value,
                            width: myViewWidth,
                            height: myViewHeight,
                            direction: Axis.vertical,
                            gradientColor: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  ColorConstant.blueColor,
                                  ColorConstant.blueColor,
                                ]),
                            backgroundColor: Colors.transparent,
                            foregrondColor: Colors.transparent,
                            duration: const Duration(seconds: 5),
                            curve: Curves.fastEaseInToSlowEaseOut,
                          ),
                        ),
                      ),
                      // ========================= V PROGRESS BAR 2
                      Center(
                        child: SizedBox(
                          width: myViewWidth - 32, // Fore remove border
                          height: myViewHeight - 1,
                          child: SimpleAnimationProgressBar(
                            ratio: vm.progress2.value,
                            width: myViewWidth,
                            height: myViewHeight,
                            direction: Axis.vertical,
                            gradientColor: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  ColorConstant.orangeColor,
                                  ColorConstant.yellowColor
                                ]),
                            backgroundColor: Colors.transparent,
                            foregrondColor: Colors.transparent,
                            duration: const Duration(seconds: 5),
                            curve: Curves.fastEaseInToSlowEaseOut,
                          ),
                        ),
                      ),
                      Center(
                        child: SizedBox(
                          width: myViewWidth,
                          height: myViewHeight,
                          child: const Image(
                              fit: BoxFit.contain,
                              image: AssetImage(
                                  "assets/images/img_six_pac_latest.png")),
                        ),
                      ),
                      // Center(
                      //   child: Positioned(
                      //     // Adjust this value to control overlap
                      //     child: GestureDetector(
                      //       child: SizedBox(
                      //         width: myViewWidth,
                      //         height: myViewHeight + 18,
                      //         child: const Align(
                      //           alignment: Alignment.bottomCenter,
                      //           child: Image(
                      //               width: 36,
                      //               height: 36,
                      //               image:
                      //                   AssetImage("assets/images/ic_add.png")),
                      //         ),
                      //       ),
                      //       onTap: () async {
                      //         final result = await Get.to<Tuple2<bool, String>>(
                      //             const SixPacLogActivityScreen());
                      //         if (result != null) {
                      //           if (kDebugMode) {
                      //             print("TAG_Item1 ${result.item1}");
                      //             print("TAG_Item2 ${result.item2}");
                      //           }

                      //           if (result.item2.isNotEmpty) {
                      //             isBurned.value = result.item1;
                      //             vm.updateProgress(result.item2);
                      //           }
                      //         }
                      //       },
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),

                  const SizedBox(
                    height: 16,
                  ),

                  SizedBox(
                    width: myViewWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Goal: ${vm.goalCal.value.toInt()} Kcal",
                          style: const TextStyle(fontSize: 10),
                        ),
                        const Spacer(),
                        Text(
                          "Remaining: ${vm.remainingCal()} Kcal",
                          style: const TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  // ======================= HORIZONTAL PROGRESS BARs
                  Stack(children: [
                    Center(
                      child: SizedBox(
                        width: myViewWidth,
                        height: 12,
                        child: SimpleAnimationProgressBar(
                          ratio: vm.progress1.value,
                          width: myViewWidth,
                          height: 12,
                          direction: Axis.horizontal,
                          borderRadius: const BorderRadius.horizontal(
                              left: Radius.circular(8),
                              right: Radius.circular(8)),
                          gradientColor: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                ColorConstant.blueColor,
                                ColorConstant.blueColor,
                              ]),
                          backgroundColor: Colors.white,
                          foregrondColor: Colors.transparent,
                          duration: const Duration(seconds: 5),
                          curve: Curves.fastEaseInToSlowEaseOut,
                        ),
                      ),
                    ),
                    Center(
                      child: SimpleAnimationProgressBar(
                        ratio: vm.progress2.value,
                        width: myViewWidth,
                        height: 12,
                        direction: Axis.horizontal,
                        borderRadius: const BorderRadius.horizontal(
                            left: Radius.circular(8),
                            right: Radius.circular(8)),
                        gradientColor: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              ColorConstant.orangeColor,
                              ColorConstant.yellowColor
                            ]),
                        backgroundColor: Colors.transparent,
                        foregrondColor: Colors.transparent,
                        duration: const Duration(seconds: 5),
                        curve: Curves.fastEaseInToSlowEaseOut,
                      ),
                    )
                  ]),
                  const SizedBox(
                    height: 4,
                  ),
                  SizedBox(
                    width: myViewWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${(vm.consumedCal.value)} Kcal Consumed",
                          style: const TextStyle(fontSize: 10),
                        ),
                        const Spacer(),
                        Text(
                          "${(vm.burnedCal.value)} Kcal Burned",
                          style: const TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                  ),
                  // const SizedBox(
                  //   height: 48,
                  // ),
                  // Text(
                  //   "${(vm.currentCal.value)} Current Kcal",
                  //   style: const TextStyle(fontSize: 10),
                  // ),
                ],
              ),
            ),
          ),
        ));
  }
}
