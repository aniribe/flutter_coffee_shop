import 'package:flutter/material.dart';
import '../constants/app_color.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Icon(Icons.notifications),
        Positioned(
          right: 2,
          child: Container(
            width: 9,
            height: 9,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.mainOrange,
            ),
          ),
        )
      ],
    );
  }
}
