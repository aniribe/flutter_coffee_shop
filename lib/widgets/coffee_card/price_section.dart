import 'package:flutter/material.dart';
import '../../constants/app_color.dart';

class PriceSection extends StatelessWidget {
  final String price;

  const PriceSection({
    Key? key,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
              style: const TextStyle(
                color: AppColors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              children: [
                const TextSpan(
                  text: '\$ ',
                  style: TextStyle(color: AppColors.mainOrange),
                ),
                TextSpan(text: price),
              ]),
        ),
        Container(
          height: 30,
          width: 30,
          decoration: const BoxDecoration(
              // color: AppColors.mainOrange,
              ),
          child: TextButton(
            style: TextButton.styleFrom(
                padding: const EdgeInsets.all(0),
                primary: AppColors.white,
                backgroundColor: AppColors.mainOrange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
            child: const Icon(
              Icons.add,
              size: 17,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
