import 'package:coffee_shop/widgets/coffee_card/rating.dart';
import 'package:flutter/material.dart';

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
        Rating(rating: rating),
      ],
    );
  }
}
