import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/base/base_screen.dart';
import 'package:flutter_application_1/base_structure/constants/app_strings.dart';
import 'package:flutter_application_1/base_structure/utils/utils.dart';
import 'package:get/get.dart';

import '../common_widgets/no_data.dart';
import '../constants/app_text_constant.dart';
import '../vm/rnd_view_model.dart';

class RNDScreen extends BaseScreen<RNDViewModel> {
  const RNDScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return (vm.recipes.isNotEmpty)
        ? ListView.separated(
            padding: const EdgeInsets.symmetric(vertical: 8),
            scrollDirection: Axis.vertical,
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(width: 8);
            },
            itemCount: vm.recipes.length,
            itemBuilder: (context, index) {
              final recipe = vm.recipes[index];
              return Stack(children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Text(
                              AppStrings.lblRecipeId.tr,
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontFamily: AppTextConstant.poppinsMedium),
                            )),
                            Expanded(
                                child: Text(
                              recipe.recipeId.toString(),
                              style: const TextStyle(
                                  fontSize: 12,
                                  fontFamily: AppTextConstant.poppinsMedium),
                            )),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Text(
                              AppStrings.lblName.tr,
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontFamily: AppTextConstant.poppinsMedium),
                            )),
                            Expanded(
                                child: Text(
                              recipe.name.toString(),
                              style: const TextStyle(
                                  fontSize: 12,
                                  fontFamily: AppTextConstant.poppinsMedium),
                            )),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Text(
                              AppStrings.lblVersion.tr,
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontFamily: AppTextConstant.poppinsMedium),
                            )),
                            Expanded(
                                child: Text(
                              recipe.version.toString(),
                              style: const TextStyle(
                                  fontSize: 12,
                                  fontFamily: AppTextConstant.poppinsMedium),
                            )),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Text(
                              AppStrings.lblCreatedBy.tr,
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontFamily: AppTextConstant.poppinsMedium),
                            )),
                            Expanded(
                                child: Text(
                              recipe.createdBy.toString(),
                              style: const TextStyle(
                                  fontSize: 12,
                                  fontFamily: AppTextConstant.poppinsMedium),
                            )),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Text(
                              AppStrings.lblCreatedOn.tr,
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontFamily: AppTextConstant.poppinsMedium),
                            )),
                            Expanded(
                                child: Text(
                              recipe.createdOn.toString(),
                              style: const TextStyle(
                                  fontSize: 12,
                                  fontFamily: AppTextConstant.poppinsMedium),
                            )),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Text(
                              AppStrings.lblBaseSize.tr,
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontFamily: AppTextConstant.poppinsMedium),
                            )),
                            Expanded(
                                child: Text(
                              recipe.baseSize.toString(),
                              style: const TextStyle(
                                  fontSize: 12,
                                  fontFamily: AppTextConstant.poppinsMedium),
                            )),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Text(
                              AppStrings.lblUOM.tr,
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontFamily: AppTextConstant.poppinsMedium),
                            )),
                            Expanded(
                                child: Text(
                              recipe.uom.toString(),
                              style: const TextStyle(
                                  fontSize: 12,
                                  fontFamily: AppTextConstant.poppinsMedium),
                            )),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Text(
                              AppStrings.lblCost.tr,
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontFamily: AppTextConstant.poppinsMedium),
                            )),
                            Expanded(
                                child: Text(
                              recipe.cost.toString(),
                              style: const TextStyle(
                                  fontSize: 12,
                                  fontFamily: AppTextConstant.poppinsMedium),
                            )),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Text(
                              AppStrings.lblCurrency.tr,
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontFamily: AppTextConstant.poppinsMedium),
                            )),
                            Expanded(
                                child: Text(
                              recipe.currency.toString(),
                              style: const TextStyle(
                                  fontSize: 12,
                                  fontFamily: AppTextConstant.poppinsMedium),
                            )),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 8,
                  right: 8,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                        color: Colors.black,
                        onPressed: () {
                          removeRecipe();
                        },
                        icon: const Icon(Icons.delete)),
                  ),
                )
              ]);
            })
        : NoData(title: AppStrings.noRecipeFound.tr);
  }
}
