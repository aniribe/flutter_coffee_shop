import 'package:flutter/material.dart';
import '../../../constants/app_color.dart';
import '../../../constants/string_constants.dart';
import '../../../util/ui_helper.dart';

class CoffeeDetailsNavigationBar extends StatelessWidget {
  final String price;

  const CoffeeDetailsNavigationBar({
    Key? key,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                StringConstants.price,
                style: TextStyle(
                    fontSize: 13, color: AppColors.white.withOpacity(0.6)),
              ),
              verticalSpace(3),
              RichText(
                  text: TextSpan(
                text: '\$ ',
                style: const TextStyle(
                  color: AppColors.mainOrange,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: price,
                    style: const TextStyle(color: AppColors.white),
                  ),
                ],
              )),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: AppColors.mainOrange,
              fixedSize: Size(screenWidth(context) * 0.65, 60),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text(
              StringConstants.buyNow,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
