import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../constants/app_color.dart';
import '../../model/coffee_button.dart';
import '../circle_tab_indicator.dart';

class CoffeeTypeSectionWithMovingCircle extends StatelessWidget {
  final List<CoffeeButton> coffeeButtons;

  const CoffeeTypeSectionWithMovingCircle({
    Key? key,
    required this.coffeeButtons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: DefaultTabController(
        length: coffeeButtons.length,
        child: TabBar(
          isScrollable: true,
          labelStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          labelColor: AppColors.mainOrange,
          unselectedLabelColor: AppColors.white.withOpacity(0.6),
          indicator: CircleTabIndicator(color: AppColors.mainOrange, radius: 4),
          indicatorPadding: const EdgeInsets.all(12),
          dragStartBehavior: DragStartBehavior.down,
          tabs: coffeeButtons
              .map((button) => Tab(
                    child: Text(button.coffeeType),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
