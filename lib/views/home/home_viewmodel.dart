import 'package:coffee_shop/constants/string_constants.dart';
import 'package:stacked/stacked.dart';
import '../../model/coffee_button.dart';

class HomeViewModel extends BaseViewModel {
  List<CoffeeButton> coffeeButtons = [
    CoffeeButton(coffeeType: StringConstants.cappuccino, isActive: true),
    CoffeeButton(coffeeType: StringConstants.espresso),
    CoffeeButton(coffeeType: StringConstants.latte),
    CoffeeButton(coffeeType: StringConstants.flatWhite),
    CoffeeButton(coffeeType: StringConstants.macchiato),
    CoffeeButton(coffeeType: StringConstants.mochaLatte),
    CoffeeButton(coffeeType: StringConstants.irishCoffee),
  ];

  int selectedButton = 0;

  void onCoffeeTypeButtonPressedHandler(int index) {
    coffeeButtons[selectedButton].isActive = false;
    coffeeButtons[index].isActive = true;
    selectedButton = index;
    notifyListeners();
  }
}
