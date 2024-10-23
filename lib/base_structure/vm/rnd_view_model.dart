import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/base_structure/base/base_view_model_getx.dart';

import '../model/recipe.dart';

class RNDViewModel extends BaseViewModel {
  @override
  void onInit() {
    super.onInit();
    if (kDebugMode) {
      print("RND VM Initialized");
    }
  }

  final recipes = [
    Recipe(
      recipeId: "511",
      name: "Test Receipe for Haakon",
      version: "1",
      createdBy: "Finished Good",
      createdOn: "Apr-29-2024",
      baseSize: "500.000000",
      uom: "Kilograms",
      cost: "10.00",
      currency: "EUR",
    ),
    Recipe(
      recipeId: "512",
      name: "Test Receipe for Haakon2",
      version: "1",
      createdBy: "Finished Good",
      createdOn: "Jan-29-2024",
      baseSize: "300.000000",
      uom: "lbs",
      cost: "20.0",
      currency: "EUR",
    ),
  ];
}
