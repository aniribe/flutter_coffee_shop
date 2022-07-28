import 'package:flutter/material.dart';
import '../../../constants/app_color.dart';
import '../../../util/ui_helper.dart';
import '../../../widgets/buttons/menu_button.dart';

class TopButtonsRow extends StatelessWidget {
  final VoidCallback onTap;

  const TopButtonsRow({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 40,
      width: screenWidth(context),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppIconButton(
              icon: Icons.arrow_back_ios,
              iconSize: 17,
              iconColor: AppColors.white.withOpacity(0.3),
              onTap: onTap,
            ),
            AppIconButton(
              icon: Icons.favorite,
              iconSize: 18,
              iconColor: AppColors.white.withOpacity(0.2),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
