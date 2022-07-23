import 'package:flutter/cupertino.dart';
import '../../constants/app_color.dart';
import '../../util/ui_helper.dart';

class CoffeeName extends StatelessWidget {
  final String coffeeName;
  final String description;

  const CoffeeName(
      {Key? key, required this.description, required this.coffeeName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          coffeeName,
          style: const TextStyle(fontSize: 16),
        ),
        verticalSpace(5),
        Text(
          description,
          style: TextStyle(
            fontSize: 11,
            color: AppColors.white.withOpacity(0.6),
          ),
        ),
      ],
    );
  }
}
