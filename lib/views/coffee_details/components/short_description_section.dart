import 'dart:ui';
import 'package:coffee_shop/views/coffee_details/components/text_section.dart';
import 'package:flutter/material.dart';
import '../../../constants/app_color.dart';
import '../../../util/ui_helper.dart';
import 'icons_section.dart';

class ShortDescriptionSection extends StatelessWidget {
  final String coffeeName;
  final String description;
  final String rating;
  final String voiceAmount;
  final String roastType;

  const ShortDescriptionSection({
    Key? key,
    required this.coffeeName,
    required this.description,
    required this.rating,
    required this.voiceAmount,
    required this.roastType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            height: 150,
            width: screenWidth(context),
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 25),
            color: AppColors.black.withOpacity(0.4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextSection(
                  coffeeName: coffeeName,
                  description: description,
                  rating: rating,
                  voiceAmount: voiceAmount,
                ),
                IconsSection(roastType: roastType),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
