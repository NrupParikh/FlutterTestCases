import 'package:flutter_application_1/unit_test_class/favorites.dart';
import 'package:test/test.dart';

void main(){
  group("Testing Favorite Class", () {
    var favorite = Favorites();
    test("Testing add item in list", () {
      var number = 1;
      favorite.add(number);
      expect(favorite.items.contains(number), true);
    });

    test("Test remove item from list", () {
      var number = 20;
      favorite.add(number);
      expect(favorite.items.contains(number),true);
      favorite.remove(number);
      expect(favorite.items.contains(number),false);
    });
  });
}