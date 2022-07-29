import 'package:coffee_shop/model/coffee_type.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../config/app.locator.dart';
import '../../../services/list_service.dart';

class CoffeeDetailsViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _listService = locator<ListService>();

  CoffeeType? chosenCoffee;

  bool isExpanded = false;

  void onInit() {
    setChosenCoffee();
  }

  void setChosenCoffee() => chosenCoffee = _listService.getChosenCoffee();

  void onBackButtonPressed() => _navigationService.popRepeated(1);

  void onReadMoreTapHandler() {
    isExpanded = !isExpanded;
    notifyListeners();
  }
}
