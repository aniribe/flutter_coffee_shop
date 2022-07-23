import 'package:coffee_shop/util/ui_helper.dart';
import 'package:coffee_shop/widgets/coffee_card/price_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants/app_color.dart';
import 'coffee_imsge.dart';
import 'coffee_name.dart';

class CoffeeCard extends StatelessWidget {
  final String coffeeName;
  final String description;
  final String image;
  final String price;

  const CoffeeCard({
    Key? key,
    required this.description,
    required this.coffeeName,
    required this.image,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25, bottom: 25),
      child: Container(
        padding: const EdgeInsets.all(15),
        width: 200,
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
            CoffeeImage(image: image),
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
  }
}
