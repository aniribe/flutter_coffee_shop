import 'package:flutter/material.dart';
import '../../../constants/app_color.dart';
import '../../../model/coffee_size_button.dart';
import '../../../util/ui_helper.dart';

class CoffeeSizeSection extends StatelessWidget {
  final List<CoffeeSizeButton> buttons;
  final void Function(int) onTap;

  const CoffeeSizeSection({
    Key? key,
    required this.buttons,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Size'),
          verticalSpace(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: buttons
                .map(
                  (button) => TextButton(
                    onPressed: () => onTap(button.index),
                    style: TextButton.styleFrom(
                      side: BorderSide(
                          color: button.isPressed
                              ? AppColors.mainOrange
                              : AppColors.blackBlue),
                      backgroundColor: AppColors.blackBlue,
                      fixedSize: const Size.fromWidth(100),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    child: Text(
                      button.name,
                      style: TextStyle(
                          color: button.isPressed
                              ? AppColors.mainOrange
                              : AppColors.white),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
