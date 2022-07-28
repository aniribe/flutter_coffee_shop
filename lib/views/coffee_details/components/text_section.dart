import 'package:flutter/material.dart';
import '../../../constants/app_color.dart';
import '../../../util/ui_helper.dart';

class TextSection extends StatelessWidget {
  final String coffeeName;
  final String description;
  final String rating;
  final String voiceAmount;

  const TextSection({
    Key? key,
    required this.coffeeName,
    required this.description,
    required this.rating,
    required this.voiceAmount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          coffeeName,
          style: const TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, letterSpacing: 1.3),
        ),
        verticalSpace(3),
        Text(
          description,
          style:
              TextStyle(color: AppColors.white.withOpacity(0.7), fontSize: 16),
        ),
        verticalSpace(20),
        Row(
          children: [
            const Icon(
              Icons.star,
              size: 19,
              color: AppColors.mainOrange,
            ),
            horizontalSpace(10),
            Text(
              rating,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            horizontalSpace(5),
            Text(
              '($voiceAmount)',
              style: TextStyle(
                fontSize: 12,
                color: AppColors.white.withOpacity(0.7),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
