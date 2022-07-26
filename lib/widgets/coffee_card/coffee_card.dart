import 'dart:ui';

import 'package:animations/animations.dart';
import 'package:coffee_shop/util/ui_helper.dart';
import 'package:coffee_shop/widgets/coffee_card/price_section.dart';
import 'package:flutter/material.dart';
import '../../constants/app_color.dart';
import '../../views/home/coffee_details/coffee_details_view.dart';
import 'coffee_imsge.dart';
import 'coffee_name.dart';

class CoffeeCard extends StatelessWidget {
  final String coffeeName;
  final String description;
  final String image;
  final String price;
  final VoidCallback onTap;
  final Widget openBuilderWidget;
  final String rating;

  const CoffeeCard({
    Key? key,
    required this.description,
    required this.coffeeName,
    required this.image,
    required this.price,
    required this.onTap,
    required this.openBuilderWidget,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25),
      child: OpenContainer(
        closedColor: Colors.transparent,
        closedShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        transitionType: ContainerTransitionType.fadeThrough,
        closedBuilder: (BuildContext context, VoidCallback openContainer) {
          return GestureDetector(
            onTap: () {
              onTap();
              openContainer();
            },
            child: Container(
              padding: const EdgeInsets.all(15),
              width: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: const LinearGradient(
                  colors: [AppColors.grey700, AppColors.darkBlackForGradient],
                  begin: Alignment.topLeft,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CoffeeImage(image: image, rating: rating),
                  verticalSpace(10),
                  CoffeeName(
                    coffeeName: coffeeName,
                    description: description,
                  ),
                  verticalSpace(25),
                  PriceSection(price: price),
                ],
              ),
            ),
          );
        },
        openBuilder: (BuildContext context, VoidCallback openContainer) {
          return openBuilderWidget;
        },
      ),
    );
  }
}
