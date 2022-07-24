import 'package:coffee_shop/constants/string_constants.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../config/app.locator.dart';
import '../../config/app.router.dart';
import '../../model/coffee_button.dart';
import '../../model/coffee_type.dart';

class HomeViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

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

  List<CoffeeType> coffeeList = [
    CoffeeType(
      name: StringConstants.cappuccino,
      description: 'With Oat Milk',
      price: '4.20',
      image: StringConstants.coffeeImage9,
    ),
    CoffeeType(
      name: StringConstants.cappuccino,
      description: 'With Chocolate',
      price: '3.14',
      image: StringConstants.coffeeImage7,
    ),
    CoffeeType(
      name: StringConstants.cappuccino,
      description: 'With Bear',
      price: '5.14',
      image: StringConstants.coffeeImage8,
    ),
    CoffeeType(
      name: StringConstants.latte,
      description: 'With Oat Milk',
      price: '2.20',
      image: StringConstants.coffeeImage3,
    ),
    CoffeeType(
      name: StringConstants.latte,
      description: 'With Ice',
      price: '3.52',
      image: StringConstants.coffeeImage4,
    ),
    CoffeeType(
      name: StringConstants.mochaLatte,
      description: 'With Milk',
      price: '4.70',
      image: StringConstants.coffeeImage5,
    ),
    CoffeeType(
      name: StringConstants.mochaLatte,
      description: 'With Water',
      price: '5.54',
      image: StringConstants.coffeeImage6,
    ),
    CoffeeType(
      name: StringConstants.flatWhite,
      description: 'With Milk',
      price: '6.03',
      image: StringConstants.coffeeImage1,
    ),
    CoffeeType(
      name: StringConstants.flatWhite,
      description: 'With Wine',
      price: '2.07',
      image: StringConstants.coffeeImage2,
    ),
    CoffeeType(
      name: StringConstants.espresso,
      description: 'Without Milk',
      price: '3.47',
      image: StringConstants.coffeeImage10,
    ),
    CoffeeType(
      name: StringConstants.espresso,
      description: 'Without Water',
      price: '4.47',
      image: StringConstants.coffeeImage11,
    ),
  ];

  void onCoffeeTypeButtonPressedHandler(int index) {
    coffeeButtons[selectedButton].isActive = false;
    coffeeButtons[index].isActive = true;
    selectedButton = index;
    notifyListeners();
  }

  Future<void> redirectToDetails() async {
    _navigationService.navigateTo(Routes.coffeeDetailsView);
  }
}
