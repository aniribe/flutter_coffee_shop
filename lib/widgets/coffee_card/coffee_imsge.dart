import 'dart:ui';
import 'package:flutter/material.dart';
import '../../constants/app_color.dart';

class CoffeeImage extends StatelessWidget {
  final String image;
  final String rating;

  const CoffeeImage({
    Key? key,
    required this.image,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 140,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              image,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        Positioned(
          right: 0,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(30),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                width: 70,
                height: 20,
                color: AppColors.black.withOpacity(0.4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.star,
                      color: AppColors.mainOrange,
                      size: 18,
                    ),
                    Text(
                      rating,
                      style: const TextStyle(
                          fontSize: 11, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
