import 'package:flutter/material.dart';
import '../../constants/app_color.dart';
import '../notification_icon.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppColors.black,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.mainOrange,
      unselectedItemColor: AppColors.white.withOpacity(0.4),
      iconSize: 25,
      currentIndex: 0,
      onTap: (index) {},
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
        BottomNavigationBarItem(icon: NotificationIcon(), label: ''),
      ],
    );
  }
}
