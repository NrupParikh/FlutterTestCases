import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/constants/app_colors.dart';
import 'package:flutter_application_1/base_structure/ui/six_pack_view_screen.dart';
import 'package:get/get.dart';
import '../vm/six_pack_home_view_model.dart';

// https://www.gifgit.com/
class SixPackViewHomeScreen extends BaseScreen<SixPackHomeViewHomeModel> {
  const SixPackViewHomeScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    double myViewWidth = 300;
    double myViewHeight = 392;

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
                  Stack(
                    children: [
                      Center(
                        child: Container(
                          width: myViewWidth - 36,
                          height: myViewHeight,
                          color: ColorConstant.blueColor,
                          child: Column(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: GestureDetector(
                                          child: Container(
                                            decoration: const BoxDecoration(
                                                color: Colors.orange,
                                                shape: BoxShape.circle),
                                            child: const Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 10, top: 10),
                                                  child: Image(
                                                      width: 24,
                                                      height: 24,
                                                      color: Colors.white,
                                                      image: AssetImage(
                                                          "assets/images/ic_edit.png")),
                                                ),
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 10),
                                                  child: Text(
                                                    "Social",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.white),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          onTap: () {
                                            if (kDebugMode) {
                                              print("TAG_1");
                                              vm.selectedOption.value = 1;
                                            }
                                          },
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: GestureDetector(
                                          child: Container(
                                            decoration: const BoxDecoration(
                                                color: Colors.indigoAccent,
                                                shape: BoxShape.circle),
                                            child: const Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(top: 10,right: 10),
                                                  child: Image(
                                                      width: 24,
                                                      height: 24,
                                                      color: Colors.white,
                                                      fit: BoxFit.contain,
                                                      image: AssetImage(
                                                          "assets/images/ic_edit.png")),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(right: 10),
                                                  child: Text(
                                                    "Social",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.white),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          onTap: () {
                                            if (kDebugMode) {
                                              print("TAG_2");
                                              vm.selectedOption.value = 2;
                                            }
                                          },
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),

                              // Row 2
                              Expanded(
                                flex: 1,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: GestureDetector(
                                          child: Container(
                                            decoration: const BoxDecoration(
                                                color: Colors.lightGreen,
                                                shape: BoxShape.circle),
                                            child: const Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(left: 10),
                                                  child: Image(
                                                      width: 24,
                                                      height: 24,
                                                      color: Colors.white,
                                                      fit: BoxFit.contain,
                                                      image: AssetImage(
                                                          "assets/images/ic_edit.png")),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(left:10.0),
                                                  child: Text(
                                                    "Social",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.white),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          onTap: () {
                                            if (kDebugMode) {
                                              print("TAG_3");
                                              vm.selectedOption.value = 3;
                                            }
                                          },
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: GestureDetector(
                                          child: Container(
                                            decoration: const BoxDecoration(
                                                color: Colors.grey,
                                                shape: BoxShape.circle),
                                            child: const Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(right: 10),
                                                  child: Image(
                                                      width: 24,
                                                      height: 24,
                                                      color: Colors.white,
                                                      fit: BoxFit.contain,
                                                      image: AssetImage(
                                                          "assets/images/ic_edit.png")),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(right: 10),
                                                  child: Text(
                                                    "Social",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.white),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          onTap: () {
                                            if (kDebugMode) {
                                              print("TAG_4");
                                              vm.selectedOption.value = 4;
                                            }
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Row 3
                              Expanded(
                                flex: 1,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: GestureDetector(
                                          child: Container(
                                            decoration: const BoxDecoration(
                                                color: Colors.purple,
                                                shape: BoxShape.circle),
                                            child: const Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(left: 10),
                                                  child: Image(
                                                      width: 24,
                                                      height: 24,
                                                      color: Colors.white,
                                                      fit: BoxFit.contain,
                                                      image: AssetImage(
                                                          "assets/images/ic_edit.png")),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(left: 10,bottom: 10),
                                                  child: Text(
                                                    "Social",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.white),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          onTap: () {
                                            if (kDebugMode) {
                                              print("TAG_5");
                                              vm.selectedOption.value = 5;
                                            }
                                          },
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: GestureDetector(
                                          child: Container(
                                            decoration: const BoxDecoration(
                                                color: Colors.pink,
                                                shape: BoxShape.circle),
                                            child: const Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(right: 10),
                                                  child: Image(
                                                      width: 24,
                                                      height: 24,
                                                      color: Colors.white,
                                                      fit: BoxFit.contain,
                                                      image: AssetImage(
                                                          "assets/images/ic_edit.png")),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(right: 10,bottom: 10),
                                                  child: Text(
                                                    "Social",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.white),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          onTap: () {
                                            if (kDebugMode) {
                                              print("TAG_6");
                                              vm.selectedOption.value = 6;
                                            }
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      IgnorePointer(
                        child: Center(
                          child: SizedBox(
                            width: myViewWidth,
                            height: myViewHeight,
                            child: const Image(
                                image: AssetImage(
                                    "assets/images/img_six_pack_latest.png")),
                          ),
                        ),
                      ),
                      Center(
                        child: Positioned(
                          // Adjust this value to control overlap
                          child: GestureDetector(
                            child: SizedBox(
                              width: myViewWidth,
                              height: myViewHeight + 24,
                              child: const Align(
                                alignment: Alignment.bottomCenter,
                                child: Image(
                                    width: 36,
                                    height: 36,
                                    image:
                                        AssetImage("assets/images/ic_add.png")),
                              ),
                            ),
                            onTap: () async {
                              Get.to(const SixPackViewScreen());
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "You clicked ${vm.selectedOption.value}",
                    style: const TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
