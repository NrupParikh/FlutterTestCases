import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/constants/app_colors.dart';
import 'package:flutter_application_1/base_structure/vm/six_pack_view_model.dart';
import 'package:get/get.dart';
import 'package:simple_animation_progress_bar/simple_animation_progress_bar.dart';

class SixPackViewScreen extends BaseScreen<SixPackViewModel> {
  const SixPackViewScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    double myViewWidth = 200;
    double myViewHeight = 292;

    // vm.loadImageDimensions("assets/images/img_six_pack.png");

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
                                    child: Text("CALORE TRACKER"))),
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
                          width: myViewWidth,
                          height: myViewHeight,
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
                          width: myViewWidth,
                          height: myViewHeight,
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
                              image:
                                  AssetImage("assets/images/img_six_pack.png")),
                        ),
                      ),
                      Center(
                        child: Positioned(
                          // Adjust this value to control overlap
                          child: SizedBox(
                            width: myViewWidth,
                            height: myViewHeight + 12,
                            child: const Align(
                              alignment: Alignment.bottomCenter,
                              child: Image(
                                  width: 24,
                                  height: 24,
                                  image:
                                      AssetImage("assets/images/ic_add.png")),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 16,
                  ),

                  SizedBox(
                    width: myViewWidth,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Goal: 1300 Kcal",
                          style: TextStyle(fontSize: 10),
                        ),
                        Spacer(),
                        Text(
                          "Remaining: 1300 Kcal",
                          style: TextStyle(fontSize: 10),
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
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "0 Kcal Consumed",
                          style: TextStyle(fontSize: 10),
                        ),
                        Spacer(),
                        Text(
                          "0 Kcal Burned",
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  // ========================= SLIDER 1

                  SizedBox(
                    width: myViewWidth,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Slider(
                          value: vm.progress1.value,
                          onChanged: (double value) {
                            vm.progress1.value = value;
                            if (kDebugMode) {
                              print("Progress1 Value is ${vm.progress1.value}");
                            }
                          },
                        ),
                        Text("${(vm.progress1.value) * 100}%"),
                      ],
                    ),
                  ),

                  // ========================= SLIDER 2

                  SizedBox(
                    width: myViewWidth,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Slider(
                          value: vm.progress2.value,
                          onChanged: (double value) {
                            vm.progress2.value = value;
                            if (kDebugMode) {
                              print("Progress2 Value is ${vm.progress2.value}");
                            }
                          },
                        ),
                        Text("${(vm.progress2.value) * 100}%"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

        // Container(
              //   decoration: const BoxDecoration(
              //       gradient: LinearGradient(
              //           begin: Alignment.topCenter,
              //           end: Alignment.bottomCenter,
              //           colors: [Colors.orange, Colors.yellow, Colors.blue])),
              //   child: const Column(
              //     children: [
              //       Image(image: AssetImage("assets/images/img_six_pack.png"))
              //     ],
              //   ),
              // ),
