import 'package:coffee_shop/constants/string_constants.dart';
import 'package:coffee_shop/model/coffee_type.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../config/app.locator.dart';
import '../../../services/list_service.dart';
import '../../model/coffee_size_button.dart';
import '../../model/coffee_size_buttons_controller.dart';

class CoffeeDetailsViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _listService = locator<ListService>();

  CoffeeType? chosenCoffee;

  bool isExpanded = false;

  CoffeeSizeButtonsController? sizeButtonsController;

  void onInit() {
    setChosenCoffee();
    initializeSizeController();
  }

  void setChosenCoffee() => chosenCoffee = _listService.getChosenCoffee();

  void initializeSizeController() {
    sizeButtonsController = CoffeeSizeButtonsController(
      sizeButtons: [
        CoffeeSizeButton(
            name: StringConstants.sSize, isPressed: true, index: 0),
        CoffeeSizeButton(name: StringConstants.mSize, index: 1),
        CoffeeSizeButton(name: StringConstants.lSize, index: 2),
      ],
      pressedButton: 0,
    );
  }

  void onBackButtonPressed() => _navigationService.popRepeated(1);

  void onReadMoreTapHandler() {
    isExpanded = !isExpanded;
    notifyListeners();
  }

  void onSizeButtonPressedHandler(int index) {
    sizeButtonsController?.sizeButtons[index].isPressed = true;
    sizeButtonsController
        ?.sizeButtons[sizeButtonsController?.pressedButton as int]
        .isPressed = false;
    sizeButtonsController?.pressedButton = index;
    notifyListeners();
  }
}
