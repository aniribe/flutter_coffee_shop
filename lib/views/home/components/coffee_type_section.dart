import 'package:flutter/material.dart';
import '../../../model/coffee_button.dart';
import '../../../widgets/buttons/coffee_type_button.dart';

class CoffeeTypesSections extends StatelessWidget {
  final int itemCount;
  final Function(int) onPressed;
  final List<CoffeeButton> coffeeButtons;

  const CoffeeTypesSections({
    Key? key,
    required this.itemCount,
    required this.onPressed,
    required this.coffeeButtons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView.builder(
        itemCount: itemCount,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CoffeeTypeButton(
            onPressed: () => onPressed(index),
            coffeeType: coffeeButtons[index].coffeeType,
            isActive: coffeeButtons[index].isActive,
          );
        },
      ),
    );
  }
}
