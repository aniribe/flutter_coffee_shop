import 'package:flutter/cupertino.dart';

class CoffeeImage extends StatelessWidget {
  final String image;

  const CoffeeImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          image,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
