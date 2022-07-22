import 'package:flutter/cupertino.dart';
import '../constants/string_constants.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(11),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          StringConstants.avatarImage,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
