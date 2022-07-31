import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants/app_color.dart';
import '../../model/coffee_button.dart';
import '../../util/ui_helper.dart';

class CoffeeTypeButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String coffeeType;
  final bool isActive;

  const CoffeeTypeButton({
    Key? key,
    required this.onPressed,
    required this.coffeeType,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Column(
          children: [
            Text(
              coffeeType,
              style: TextStyle(
                fontSize: 16,
                color: isActive
                    ? AppColors.mainOrange
                    : AppColors.white.withOpacity(0.6),
                fontWeight: FontWeight.w700,
              ),
            ),
            verticalSpace(5),
            if (isActive)
              Container(
                height: 8,
                width: 8,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.mainOrange,
                ),
              )
          ],
        ));
  }
}
