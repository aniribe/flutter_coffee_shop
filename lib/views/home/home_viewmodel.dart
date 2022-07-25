import 'package:coffee_shop/constants/string_constants.dart';
import 'package:coffee_shop/services/list_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../config/app.locator.dart';
import '../../config/app.router.dart';
import '../../model/coffee_button.dart';
import '../../model/coffee_type.dart';

class HomeViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _listService = locator<ListService>();

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

  List<CoffeeType> get coffeeList => _listService.coffeeList;

  void onCoffeeTypeButtonPressedHandler(int index) {
    coffeeButtons[selectedButton].isActive = false;
    coffeeButtons[index].isActive = true;
    selectedButton = index;
    notifyListeners();
  }

  void onCoffeeCardTapHandler(int index) {}

  void setSelectedCoffee(int index) => _listService.setSelectedCoffee(index);
}
