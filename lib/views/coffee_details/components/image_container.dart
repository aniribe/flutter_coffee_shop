import 'package:flutter/cupertino.dart';
import '../../../util/ui_helper.dart';

class ImageContainer extends StatelessWidget {
  final String image;

  const ImageContainer({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context) * 0.55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
