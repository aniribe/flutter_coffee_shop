import 'package:flutter/cupertino.dart';
import '../../constants/app_color.dart';

class AppIconButton extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final double height;
  final double margin;
  final Color iconColor;
  final VoidCallback onTap;

  const AppIconButton({
    Key? key,
    required this.icon,
    this.iconSize = 15,
    this.height = 33,
    this.margin = 0,
    required this.onTap,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: height,
        margin: EdgeInsets.all(margin),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            colors: [
              AppColors.grey700,
              AppColors.darkBlackForGradient,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Icon(
          icon,
          size: iconSize,
          color: iconColor,
        ),
      ),
    );
  }
}
