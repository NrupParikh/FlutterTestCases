import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/constants/app_colors.dart';
import 'package:flutter_application_1/base_structure/ui/six_pac_fitness_screen.dart';
import 'package:flutter_application_1/base_structure/ui/six_pac_invite_screen.dart';
import 'package:flutter_application_1/base_structure/ui/six_pac_nutrition_screen.dart';
import 'package:flutter_application_1/base_structure/ui/six_pac_social_screen.dart';
import 'package:flutter_application_1/base_structure/vm/six_pac_home_view_model.dart';
import 'package:get/get.dart';

import '../common_widgets/custom_dialog.dart';

class SixPacViewHomeScreen extends BaseScreen<SixPacHomeViewHomeModel> {
  const SixPacViewHomeScreen({super.key});

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
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image(
                        width: myViewWidth - (myViewWidth / 2),
                        color: ColorConstant.blueColor,
                        image:
                            const AssetImage("assets/images/text_sixpac.png")),
                  ),
                  Stack(
                    children: [
                      Center(
                        child: SizedBox(
                          width: myViewWidth - 32,
                          height: myViewHeight,
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
                                        padding: const EdgeInsets.only(
                                            left: 10,
                                            top: 12,
                                            right: 0,
                                            bottom: 0),
                                        child: GestureDetector(
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: ColorConstant.blueColor,
                                                shape: BoxShape.circle),
                                            child: const Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Image(
                                                    width: 24,
                                                    height: 24,
                                                    color: Colors.white,
                                                    image: AssetImage(
                                                        "assets/images/ic_social.png")),
                                                Text(
                                                  "Social",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.white),
                                                )
                                              ],
                                            ),
                                          ),
                                          onTap: () {
                                            // PROFILE (Back and settings) : Tab2 > Profile Tab
                                            vm.selectedOption.value = 1;
                                            Get.to(const SixPacSocialScreen());
                                            
                                            if (kDebugMode) {
                                              print("TAG_1");
                                            }
                                          },
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 0,
                                            top: 12,
                                            right: 10,
                                            bottom: 0),
                                        child: GestureDetector(
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: ColorConstant.blueColor,
                                                shape: BoxShape.circle),
                                            child: const Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Image(
                                                    width: 24,
                                                    height: 24,
                                                    color: Colors.white,
                                                    fit: BoxFit.contain,
                                                    image: AssetImage(
                                                        "assets/images/ic_invite.png")),
                                                Text(
                                                  "Invite",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.white),
                                                )
                                              ],
                                            ),
                                          ),
                                          onTap: () {
                                            // Invite screen
                                            vm.selectedOption.value = 2;
                                            Get.to(const SixPacInviteScreen());

                                            if (kDebugMode) {
                                              print("TAG_2");
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
                                        padding: const EdgeInsets.only(
                                            left: 12,
                                            top: 0,
                                            right: 0,
                                            bottom: 0),
                                        child: GestureDetector(
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: ColorConstant.blueColor,
                                                shape: BoxShape.circle),
                                            child: const Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Image(
                                                    width: 24,
                                                    height: 24,
                                                    color: Colors.white,
                                                    fit: BoxFit.contain,
                                                    image: AssetImage(
                                                        "assets/images/ic_fitness.png")),
                                                Text(
                                                  "Fitness",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.white),
                                                )
                                              ],
                                            ),
                                          ),
                                          onTap: () {
                                            // Fitness Screen [FOR YOU/EXERCISE/WORKOUT/PLANS]
                                            vm.selectedOption.value = 3;
                                            Get.to(const SixPacFitnessScreen());

                                            if (kDebugMode) {
                                              print("TAG_3");
                                            }
                                          },
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 0,
                                            top: 0,
                                            right: 12,
                                            bottom: 0),
                                        child: GestureDetector(
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: ColorConstant.blueColor,
                                                shape: BoxShape.circle),
                                            child: const Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Image(
                                                    width: 24,
                                                    height: 24,
                                                    color: Colors.white,
                                                    fit: BoxFit.contain,
                                                    image: AssetImage(
                                                        "assets/images/ic_nutration.png")),
                                                Text(
                                                  "Nutrition",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.white),
                                                )
                                              ],
                                            ),
                                          ),
                                          onTap: () {
                                            // Nutrition Screen [FOR YOU/RECIPES/MEALS/PLANS]
                                            vm.selectedOption.value = 4;
                                            Get.to(const SixPacNutritionScreen());
                                            if (kDebugMode) {
                                              print("TAG_4");
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
                                        padding: const EdgeInsets.only(
                                            left: 12,
                                            top: 0,
                                            right: 0,
                                            bottom: 10),
                                        child: GestureDetector(
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: ColorConstant.blueColor,
                                                shape: BoxShape.circle),
                                            child: const Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Image(
                                                    width: 24,
                                                    height: 24,
                                                    color: Colors.white,
                                                    fit: BoxFit.contain,
                                                    image: AssetImage(
                                                        "assets/images/ic_shope.png")),
                                                Text(
                                                  "Shope",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.white),
                                                )
                                              ],
                                            ),
                                          ),
                                          onTap: () async {
                                            if (kDebugMode) {
                                              print("TAG_5");
                                              vm.selectedOption.value = 5;
                                              final result = await CustomDialog
                                                  .showMessageDialog("SIXPAC",
                                                      "This feature is not available in your region");
                                              if (result) {}
                                            }
                                          },
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 0,
                                            top: 0,
                                            right: 10,
                                            bottom: 10),
                                        child: GestureDetector(
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: ColorConstant.blueColor,
                                                shape: BoxShape.circle),
                                            child: const Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Image(
                                                    width: 24,
                                                    height: 24,
                                                    color: Colors.white,
                                                    fit: BoxFit.contain,
                                                    image: AssetImage(
                                                        "assets/images/ic_event.png")),
                                                Text(
                                                  "Events",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.white),
                                                )
                                              ],
                                            ),
                                          ),
                                          onTap: () async{
                                            if (kDebugMode) {
                                              print("TAG_6");
                                              vm.selectedOption.value = 6;
                                              vm.selectedOption.value = 5;
                                              final result = await CustomDialog
                                                  .showMessageDialog("SIXPAC",
                                                      "This feature is not available in your region");
                                              if (result) {}
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
                                    "assets/images/img_six_pac_latest.png")),
                          ),
                        ),
                      ),
                      Center(
                        child: Positioned(
                          // Adjust this value to control overlap
                          child: GestureDetector(
                            child: SizedBox(
                              width: myViewWidth,
                              height: myViewHeight + 18,
                              child: const Align(
                                alignment: Alignment.bottomCenter,
                                child: Image(
                                    width: 36,
                                    height: 36,
                                    image: AssetImage(
                                        "assets/images/ic_notification.png")),
                              ),
                            ),
                            onTap: () async {
                              if (kDebugMode) {
                                print("Notification");
                              }
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
