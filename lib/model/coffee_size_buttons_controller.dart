import 'coffee_size_button.dart';

class CoffeeSizeButtonsController {
  final List<CoffeeSizeButton> sizeButtons;
  int pressedButton;

  CoffeeSizeButtonsController({
    required this.sizeButtons,
    this.pressedButton = 0,
  });
}
