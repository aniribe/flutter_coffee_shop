import 'package:flutter/material.dart';
import '../../constants/app_color.dart';

class AppInput extends StatelessWidget {
  const AppInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.blackBlue,
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: AppColors.white.withOpacity(0.5),
          ),
          hintText: 'Find Your Coffee...',
          hintStyle:
              TextStyle(color: AppColors.white.withOpacity(0.5), fontSize: 14),
          focusedBorder: const OutlineInputBorder(),
          enabledBorder: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
