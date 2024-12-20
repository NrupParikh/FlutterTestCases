import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/vm/six_pack_view_model.dart';
import 'package:get/get.dart';
import 'package:simple_animation_progress_bar/simple_animation_progress_bar.dart';
import 'package:tuple/tuple.dart';

class SixPackViewScreen extends BaseScreen<SixPackViewModel> {
  const SixPackViewScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    double myViewWidth = 200;
    double myViewHeight = 292;

    // vm.loadImageDimensions("assets/images/img_six_pack.png");

    return Obx(() => SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Center(
                      child: SizedBox(
                        width: myViewWidth,
                        height: myViewHeight,
                        child: SimpleAnimationProgressBar(
                          ratio: vm.progress.value,
                          width: myViewWidth,
                          height: myViewHeight,
                          direction: Axis.vertical,
                          gradientColor: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.orange,
                                Colors.yellow
                              ]),
                          backgroundColor: Colors.black,
                          foregrondColor: Colors.black,
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
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("${(vm.progress.value) * 100}%"),
                ),
                Slider(
                  value: vm.progress.value,
                  onChanged: (double value) {
                    vm.progress.value = value;
                    if (kDebugMode) {
                      print("Current Value is ${vm.progress.value}");
                    }
                  },
                )
              ],
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
